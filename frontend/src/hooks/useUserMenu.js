import {useState} from "react";
import {useNavigate} from "react-router-dom";
import {logout} from "../services/usersApi";

const useUserMenu = () => {
  const [anchorEl, setAnchorEl] = useState(null);
  const navigate = useNavigate();

  const open = Boolean(anchorEl);

  const handleOpen = (event) => {
    setAnchorEl(event.currentTarget);
  };

  const handleClose = () => {
    setAnchorEl(null);
  };

  const handleLogout = async () => {
    try {
      await logout();
      navigate("/login");
    } catch (error) {
      console.error("Error al cerrar sesión:", error);
    }
  };

  return {
    anchorEl,
    open,
    handleOpen,
    handleClose,
    handleLogout,
  };
};

export default useUserMenu;
