/**
 * @file Menú de usuario + lógica de logout
 */
// eslint-disable-next-line no-unused-vars
import React, {useState} from "react";
import {config} from "../config/apiConfig";
import {Avatar, Box, Typography, Menu, MenuItem} from "@mui/material";
import useUserMenu from "../hooks/useUserMenu.js"

const BACKEND = config.assetsUrl;

const UserMenu = ({user}) => {
  const {
    anchorEl,
    open,
    handleOpen,
    handleClose,
    handleLogout
  } = useUserMenu();

  return (
    <>
      <Box
        onClick={handleOpen}
        sx={{
          display: "flex",
          alignItems: "center",
          gap: 1,
          p: 1,
          border: "2px solid",
          borderRadius: 2,
          borderColor: "rgba(255,255,255,0.7)",
          fontWeight: 600,
          cursor: "pointer",
          "&:hover": {opacity: 0.85, backgroundColor: "rgba(255,255,255,0.1)", borderColor: "white"},
        }}
      >
        <Avatar
          src={user?.image_url ? `${BACKEND}/users/${user.image_url}` : `${BACKEND}/default.png`}
          alt={user.username}
          sx={{width: 36, height: 36}}
        />
        <Typography sx={{fontWeight: 600}}>{user.username}</Typography>
      </Box>

      {/* MENU */}
      <Menu
        anchorEl={anchorEl}
        open={open}
        onClose={handleClose}
        PaperProps={{
          elevation: 4,
          sx: {
            mt: 1,
            borderRadius: 2,
            minWidth: 180,
          },
        }}
      >
        <MenuItem
          onClick={handleLogout}
          sx={{fontWeight: 600, color: "red"}}
        >
          Cerrar sesión
        </MenuItem>
      </Menu>
    </>
  );
};

export default UserMenu;
