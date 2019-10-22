--Table Pilote
CREATE OR REPLACE PROCEDURE Proce_InsertPilote(param_IdPilote IN Pilote.IdPilote%Type,
				 param_NomPi IN Pilote.NomPi%Type,
				 param_PrenomPi IN Pilote.PrenomPi%Type,
				 param_AdressePi IN Pilote.AdressePi%Type,
				 param_TelPi IN Pilote.TelPi%Type
				)
is
BEGIN
	INSERT INTO Pilote(IdPilote, NomPi, PrenomPi, AdressePi, TelPi)
	VALUES (param_IdPilote, param_NomPi, param_PrenomPi, param_AdressePi, param_TelPi);
END Proce_InsertPilote;
/
EXECUTE Proce_InsertPilote(5,'Kasse','Ibramasory','Kam-City','666-075-189');

--

CREATE OR REPLACE PROCEDURE Proce_UpdatePilote(param_IdPilote IN Pilote.IdPilote%Type,
				 param_NomPi IN Pilote.NomPi%Type,
				 param_PrenomPi IN Pilote.PrenomPi%Type,
				 param_AdressePi IN Pilote.AdressePi%Type,
				 param_TelPi IN Pilote.TelPi%Type				
				)
is
BEGIN 
	UPDATE Pilote
	SET NomPi=param_NomPi,
	    PrenomPi=param_PrenomPi,
	    AdressePi=param_AdressePi,
	    TelPi=param_TelPi
	WHERE IdPilote=param_IdPilote;
END Proce_UpdatePilote;
/
EXECUTE Proce_UpdatePilote(18,'Kasas','Mamadou','Kaloum','678-468-444');

--

CREATE OR REPLACE PROCEDURE Proce_DeletePilote(param_IdPilote IN Pilote.IdPilote%Type)
IS
BEGIN
	DELETE FROM Pilote
	WHERE IdPilote=param_IdPilote;
END Proce_DeletePilote;
/
EXECUTE Proce_DeletePilote(11);

---------------
--Table Avion
CREATE OR REPLACE PROCEDURE Proce_InsertAvion(param_IdAvion IN Avion.IdAvion%Type,
				 param_NomAv IN Avion.NomAv%Type,
				 param_NbrePlaceAv IN Avion.NbrePlaceAv%Type
				)
is
BEGIN
	INSERT INTO Avion(IdAvion, NomAv, NbrePlaceAv)
	VALUES (param_IdAvion, param_NomAv, param_NbrePlaceAv);
END Proce_InsertAvion;
/
EXECUTE Proce_InsertAvion(5,'Air-Kansas','858 Place');

--

CREATE OR REPLACE PROCEDURE Proce_UpdateAvion(param_IdAvion IN Avion.IdAvion%Type,
				 param_NomAv IN Avion.NomAv%Type,
				 param_NbrePlaceAv IN Avion.NbrePlaceAv%Type			
				)
is
BEGIN 
	UPDATE Avion
	SET NomAv=param_NomAv,
	    NbrePlaceAv=param_NbrePlaceAv
	WHERE IdAvion=param_IdAvion;
END Proce_UpdateAvion;
/
EXECUTE Proce_UpdateAvion(8,'Air-Canada','444 Places');

--

CREATE OR REPLACE PROCEDURE Proce_DeleteAvion(param_IdAvion IN Avion.IdAvion%Type)
IS
BEGIN
	DELETE FROM Avion
	WHERE IdAvion=param_IdAvion;
END Proce_DeleteAvion;
/
EXECUTE Proce_DeleteAvion(11);

-----------
--Table Vol
CREATE OR REPLACE PROCEDURE Proce_InsertVol(param_IdVol IN Vol.IdVol%Type,
				 param_LieuxDep IN Vol.LieuxDep%Type,
				 param_LieuxArv IN Vol.LieuxArv%Type,
				 param_HeureDep IN Vol.HeureDep%Type,
				 param_HeureArv IN Vol.HeureArv%Type,
				 param_IdPilote IN Vol.IdPilote%Type,
				 param_IdAvion IN Vol.IdAvion%Type			
				)
is
BEGIN
	INSERT INTO Vol(IdVol, LieuxDep, LieuxArv, HeureDep, HeureArv, IdPilote, IdAvion)
	VALUES (param_IdVol, param_LieuxDep, param_LieuxArv, param_HeureDep, param_HeureArv, param_IdPilote, param_IdAvion);
END Proce_InsertVol;
/
EXECUTE Proce_InsertVol(6,'Kankan','Abidjan','5 PM','9 AM',5,8);

--

CREATE OR REPLACE PROCEDURE Proce_UpdateVol(param_IdVol IN Vol.IdVol%Type,
				 param_LieuxDep IN Vol.LieuxDep%Type,
				 param_LieuxArv IN Vol.LieuxArv%Type,
				 param_HeureDep IN Vol.HeureDep%Type,
				 param_HeureArv IN Vol.HeureArv%Type,
				 param_IdPilote IN Vol.IdPilote%Type,
				 param_IdAvion IN Vol.IdAvion%Type			
				)
is
BEGIN 
	UPDATE Vol
	SET LieuxDep=param_LieuxDep,
	    LieuxArv=param_LieuxArv,
	    HeureDep=param_HeureDep,
	    HeureArv=param_HeureArv,
	    IdPilote=param_IdPilote,
	    IdAvion=param_IdAvion
	WHERE IdVol=param_IdVol;
END Proce_UpdateVol;
/
EXECUTE Proce_UpdateVol(18,'Kassa','Mamou','8 AM','5 PM',2,1);

--

CREATE OR REPLACE PROCEDURE Proce_DeleteVol(param_IdVol IN Vol.IdVol%Type)
IS
BEGIN
	DELETE FROM Vol
	WHERE IdVol=param_IdVol;
END Proce_DeleteVol;
/
EXECUTE Proce_DeleteVol(11);

-----------
--Table Passager
CREATE OR REPLACE PROCEDURE Proce_InsertPassager(param_IdPas IN Passager.IdPas%Type,
				 param_NomPas IN Passager.NomPas%Type,
				 param_PrenomPas IN Passager.PrenomPas%Type,
				 param_NumBilletPas IN Passager.NumBilletPas%Type,
				 param_NumSiegePas IN Passager.NumSiegePas%Type,
				 param_IdVol IN Passager.IdVol%Type			
				)
is
BEGIN
	INSERT INTO Passager(IdPas, NomPas, PrenomPas, NumBilletPas, IdVol)
	VALUES (param_IdPas, param_NomPas, param_PrenomPas, param_NumBilletPas, param_IdVol);
END Proce_InsertPassager;
/
EXECUTE Proce_InsertPassager(9,'Kaba','Mory','58 billet','622',5);

--

CREATE OR REPLACE PROCEDURE Proce_UpdatePassager(param_IdPas IN Passager.IdPas%Type,
				 param_NomPas IN Passager.NomPas%Type,
				 param_PrenomPas IN Passager.PrenomPas%Type,
				 param_NumBilletPas IN Passager.NumBilletPas%Type,
				 param_NumSiegePas IN Passager.NumSiegePas%Type,
				 param_IdVol IN Passager.IdVol%Type		
				)
is
BEGIN 
	UPDATE Passager
	SET NomPas=param_NomPas,
	    PrenomPas=param_PrenomPas,
	    NumBilletPas=param_NumBilletPas,
	    NumSiegePas=param_NumSiegePas,
	    IdVol=param_IdVol
	WHERE IdPas=param_IdPas;
END Proce_UpdatePassager;
/
EXECUTE Proce_UpdatePassager(8,'Kassa','Mamoudou','85 billet','55',1);

--

CREATE OR REPLACE PROCEDURE Proce_DeletePassager(param_IdPas IN Passager.IdPas%Type)
IS
BEGIN
	DELETE FROM Passager
	WHERE IdPas=param_IdPas;
END Proce_DeletePassager;
/
EXECUTE Proce_DeletePassager(11);

--------

--Table Bagages
CREATE OR REPLACE PROCEDURE Proce_InsertBagages(param_IdBag IN Bagages.IdBag%Type,
				 param_NbreBag IN Bagages.NbreBag%Type,
				 param_PoidBag IN Bagages.PoidBag%Type,
				 param_IdPas  IN Bagages.IdPas%Type
				)
is
BEGIN
	INSERT INTO Bagages(IdBag, NbreBag, PoidBag, IdPas)
	VALUES (param_IdBag,param_NbreBag, param_PoidBag, param_IdPas);
END Proce_InsertBagages;
/
EXECUTE Proce_InsertBagages(8,'5 bagages','62 kg',1);

--

CREATE OR REPLACE PROCEDURE Proce_UpdateBagages(param_IdBag IN Bagages.IdBag%Type,
				 param_NbreBag IN Bagages.NbreBag%Type,
				 param_PoidBag IN Bagages.PoidBag%Type,
				 param_IdPas  IN Bagages.IdPas%Type				
				)
is
BEGIN 
	UPDATE Bagages
	SET NbreBag=param_NbreBag,
	    PoidBag=param_PoidBag,
	    IdPas=param_IdPas
	WHERE IdBag=param_IdBag;
END Proce_UpdateBagages;
/
EXECUTE Proce_UpdateBagages(8,'7 bagage','65 kg',4);

--

CREATE OR REPLACE PROCEDURE Proce_DeleteBagages(param_IdBag IN Bagages.IdBag%Type)
IS
BEGIN
	DELETE FROM Bagages
	WHERE IdBag=param_IdBag;
END Proce_DeleteBagages;
/
EXECUTE Proce_DeleteBagages(1);

------------