/**
 * @file Hook personalizado que contiene la lógica del componente HigerLower.jsx
 */
import {useEffect, useState} from "react";
import {getPlayersByClub} from "../services/playersApi";

export const useHigherLower = (initialPlayer) => {
  const [players, setPlayers] = useState([]);
  const [current, setCurrent] = useState(initialPlayer);
  const [opponent, setOpponent] = useState(null);
  const [score, setScore] = useState(0);
  const [usedIds, setUsedIds] = useState([initialPlayer.id]);
  const [animation, setAnimation] = useState(null); 

  const [gameOver, setGameOver] = useState(false);
  const [victory, setVictory] = useState(false);

  // Animaciones de acierto/fallo
  const successAnimation = {
    animation: "pulseGreen 0.5s ease forwards",
    "@keyframes pulseGreen": {
      "0%": {boxShadow: "0 0 0px rgba(0,255,0,0)"},
      "50%": {boxShadow: "0 0 30px 12px rgba(0,255,0,0.6)"},
      "100%": {boxShadow: "0 0 0px rgba(0,255,0,0)"},
    }
  };

  const errorAnimation = {
    animation: "pulseRed 0.5s ease forwards",
    "@keyframes pulseRed": {
      "0%": {boxShadow: "0 0 0px rgba(255,0,0,0)"},
      "50%": {boxShadow: "0 0 30px 12px rgba(255,0,0,0.6)"},
      "100%": {boxShadow: "0 0 0px rgba(255,0,0,0)"},
    }
  };

  // Cargar jugadores del mismo club que el jugador inicial
  useEffect(() => {
    const fetchPlayers = async () => {
      const list = await getPlayersByClub(initialPlayer.club_id);

      const filtered = list.filter((p) => p.id !== initialPlayer.id);
      setPlayers(filtered);
      pickOpponent(filtered, [initialPlayer.id]);
    };

    fetchPlayers();
  }, [initialPlayer]);

  // Elegir un oponente nuevo
  const pickOpponent = (list, used) => {
    const remaining = list.filter((p) => !used.includes(p.id));

    if (remaining.length === 0) {
      setVictory(true);
      return;
    }

    const random = remaining[Math.floor(Math.random() * remaining.length)];
    setOpponent(random);
  };

  // Al clickar en un jugador comparamos sus pp (Points per Game) y reaccionamos en consecuencia
  const handleChoose = (choice) => {
    if (!opponent) return;

    const currentValue = Number(current.pp);
    const opponentValue = Number(opponent.pp);

    const chosen = choice === "left" ? currentValue : opponentValue;
    const other = choice === "left" ? opponentValue : currentValue;

    if (chosen >= other) {
      // Activamos animación de acierto
      setAnimation({side: choice, type: "success"});

      //  Si acertamos el jugador seleccionado pasa a ser current y seleccionamos un nuevo oponent
      setTimeout(() => {
        const winner = chosen === currentValue ? current : opponent;
        setScore(prev => prev + 100);
        setCurrent(winner);

        const newUsed = [...usedIds, opponent.id];
        setUsedIds(newUsed);

        pickOpponent(players, newUsed);

        setAnimation(null);
      }, 700); // duración animación
    } else {
      
      // Activamos animación de fallo
      setAnimation({side: choice, type: "error"});
      // En caso de fallo se acaba el juego
      setTimeout(() => {
        setGameOver(true);
        setAnimation(null);
      }, 700); // esperar animación
    }
  };

  // 🔄 Reiniciar partida
  const resetGame = () => {
    setScore(0);
    setUsedIds([initialPlayer.id]);
    setCurrent(initialPlayer);
    pickOpponent(players, [initialPlayer.id]);
    setVictory(false);
    setGameOver(false);
  };

  return {
    current,
    opponent,
    score,
    gameOver,
    victory,
    successAnimation,
    errorAnimation,
    animation,
    handleChoose,
    resetGame
  };
};
