-- Création de la table des utilisateurs
CREATE TABLE T_USER(
  U_ID SERIAL,
  U_NAME VARCHAR(100) NOT NULL,
  U_FIRST_NAME VARCHAR(100) NOT NULL,
  U_LOGIN VARCHAR(255) NOT NULL,
  U_PASSWORD VARCHAR(255) NOT NULL,
  PRIMARY KEY(U_ID),
  CONSTRAINT U_USER_LOGIN UNIQUE(U_LOGIN)
);

-- Commentaires sur la table User et ses colonnes
COMMENT ON TABLE T_USER IS 'Table des utilisateurs';
COMMENT ON COLUMN T_USER.U_ID IS 'ID d''un utilisateur';
COMMENT ON COLUMN T_USER.U_NAME IS 'Nom d''utilisateur';
COMMENT ON COLUMN T_USER.U_FIRST_NAME IS 'Prénom d''un utilisateur';
COMMENT ON COLUMN T_USER.U_LOGIN IS 'Login d''un utilisateur';
COMMENT ON COLUMN T_USER.U_PASSWORD IS 'Mot de passe d''un utilisateur';