import {useEffect, useState} from "react";
import {getCurrentUser} from "../services/usersApi";

const useAuth = () => {
  const [user, setUser] = useState(null);
  const [loading, setLoading] = useState(true);

  useEffect(() => {
    const fetchAuth = async () => {
      const loggedUser = await getCurrentUser();
      setUser(loggedUser);
      setLoading(false);
    };

    fetchAuth();
  }, []);

  return {user, loading};
};

export default useAuth;
