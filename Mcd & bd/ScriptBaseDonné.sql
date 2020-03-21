#------------------------------------------------------------
#        Script MySQL.
#------------------------------------------------------------


#------------------------------------------------------------
# Table: Freelancer
#------------------------------------------------------------

CREATE TABLE Freelancer(
        UserNameF     Varchar (50) NOT NULL ,
        MotDePasseF   Integer NOT NULL ,
        Nomf          Varchar (50) NOT NULL ,
        PrenomF       Varchar (50) NOT NULL ,
        PrixParheure    Int NOT NULL ,
        ProjetRealise Int ,
        VilleF        Varchar (50) NOT NULL ,
        A__propos     Varchar (500) NOT NULL
	,CONSTRAINT Freelancer_PK PRIMARY KEY (UserNameF,MotDePasseF)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Buyer
#------------------------------------------------------------

CREATE TABLE Buyer(
        UserNameB     Varchar (50) NOT NULL ,
        MotDePasseB   Integer NOT NULL ,
        NomB          Varchar (50) NOT NULL ,
        PrenomB       Varchar (50) NOT NULL ,
        VilleB        Varchar (50) NOT NULL ,
        ProjetsPostes Int
	,CONSTRAINT Buyer_PK PRIMARY KEY (UserNameB,MotDePasseB)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Catégories
#------------------------------------------------------------

CREATE TABLE Categories(
        IdCat  Int NOT NULL ,
        NomCat Varchar (50) NOT NULL
	,CONSTRAINT Categories_PK PRIMARY KEY (NomCat,IdCat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Compétences
#------------------------------------------------------------

CREATE TABLE Competences(
        IdComp  Int NOT NULL ,
        NomComp Varchar (50) NOT NULL
	,CONSTRAINT Competences_PK PRIMARY KEY (NomComp,IdComp)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Projet
#------------------------------------------------------------

CREATE TABLE Projet(
        IdP           Int NOT NULL ,
        TitreDuProjet Varchar (50) NOT NULL ,
        Budget        Integer NOT NULL ,
        Description   Varchar (50) NOT NULL ,
        UserNameB     Varchar (50) NOT NULL ,
        NomCat        Varchar (50) NOT NULL
	,CONSTRAINT Projet_PK PRIMARY KEY (TitreDuProjet,IdP)

	,CONSTRAINT Projet_Buyer_FK FOREIGN KEY (UserNameB) REFERENCES Buyer(UserNameB)
	,CONSTRAINT Projet_Categories0_FK FOREIGN KEY (NomCat) REFERENCES Categories(NomCat)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Postuler
#------------------------------------------------------------

CREATE TABLE Postuler(
        TitreDuProjet Varchar (50) NOT NULL ,
        UserNameF     Varchar (50) NOT NULL ,
	CONSTRAINT Postuler_PK PRIMARY KEY (TitreDuProjet,UserNameF)

	,CONSTRAINT Postuler_Projet_FK FOREIGN KEY (TitreDuProjet) REFERENCES Projet(TitreDuProjet)
	,CONSTRAINT Postuler_Freelancer0_FK FOREIGN KEY (UserNameF) REFERENCES Freelancer(UserNameF)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Avoir
#------------------------------------------------------------

CREATE TABLE Avoir(
        NomComp     Varchar (50) NOT NULL ,
        UserNameF   Varchar (50) NOT NULL 
	,CONSTRAINT Avoir_PK PRIMARY KEY (NomComp,UserNameF)

	,CONSTRAINT Avoir_Competences_FK FOREIGN KEY (NomComp) REFERENCES Competences(NomComp)
	,CONSTRAINT Avoir_Freelancer0_FK FOREIGN KEY (UserNameF) REFERENCES Freelancer(UserNameF)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Accorder
#------------------------------------------------------------

CREATE TABLE Accorder(
        UserNameF     Varchar (50) NOT NULL ,
        UserNameB     Varchar (50) NOT NULL ,
        TitreDuProjet Varchar (50) NOT NULL
	,CONSTRAINT Accorder_PK PRIMARY KEY (UserNameF,UserNameB,TitreDuProjet)

	,CONSTRAINT Accorder_Freelancer_FK FOREIGN KEY (UserNameF) REFERENCES Freelancer(UserNameF)
	,CONSTRAINT Accorder_Buyer0_FK FOREIGN KEY (UserNameB) REFERENCES Buyer(UserNameB)
	,CONSTRAINT Accorder_Projet1_FK FOREIGN KEY (TitreDuProjet) REFERENCES Projet(TitreDuProjet)
)ENGINE=InnoDB;


#------------------------------------------------------------
# Table: Requérir
#------------------------------------------------------------

CREATE TABLE Requerir(

        TitreDuProjet Varchar (50) NOT NULL ,
        NomComp       Varchar (50) NOT NULL
	,CONSTRAINT Requerir_PK PRIMARY KEY (TitreDuProjet,NomComp)

	,CONSTRAINT Requerir_Projet_FK FOREIGN KEY (TitreDuProjet) REFERENCES Projet(TitreDuProjet)
	,CONSTRAINT Requerir_Competences0_FK FOREIGN KEY (NomComp) REFERENCES Competences(NomComp)
)ENGINE=InnoDB;


GRANT ALL ON db.* TO 'j2ee'@'localhost'