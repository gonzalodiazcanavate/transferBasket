import React from 'react';
import {
  Container,
  Typography,
  Box,
  Paper,
  TextField,
  Button,
  Card,
  CardContent
} from '@mui/material';
import LockIcon from '@mui/icons-material/Lock';

function Login() {
  return (
    <Container maxWidth="sm" sx={{ mt: 8, mb: 4 }}>
      <Card elevation={3} sx={{ backgroundColor: 'background.paper' }}>
        <CardContent>
          <Box display="flex" flexDirection="column" alignItems="center" p={3}>
            <LockIcon sx={{ fontSize: 40, mb: 2, color: "primary.main" }} />
            <Typography variant="h4" component="h1" gutterBottom>
              Iniciar Sesión
            </Typography>
            
            <Box component="form" noValidate sx={{ mt: 1, width: '100%' }}>
              <TextField
                margin="normal"
                required
                fullWidth
                id="email"
                label="Email"
                name="email"
                autoComplete="email"
                autoFocus
                sx={{ mb: 2 }}
              />
              <TextField
                margin="normal"
                required
                fullWidth
                name="password"
                label="Contraseña"
                type="password"
                id="password"
                autoComplete="current-password"
                sx={{ mb: 3 }}
              />
              <Button
                type="submit"
                fullWidth
                variant="contained"
                sx={{
                  mt: 2,
                  mb: 2,
                  bgcolor: 'primary.main',
                  '&:hover': {
                    bgcolor: 'primary.dark',
                  }
                }}
              >
                Iniciar Sesión
              </Button>
            </Box>
          </Box>
        </CardContent>
      </Card>
    </Container>
  );
}

export default Login;
