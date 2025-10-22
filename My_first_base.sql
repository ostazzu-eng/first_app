CREATE TABLE "MOUVEMENT"(
  id integer NOT NULL,
  "Type_mouvement" text,
  date_opération date,
  "Libelle" text,
  categorie text,
  montant float4,
  CONSTRAINT "MOUVEMENT_pkey" PRIMARY KEY(id)
);


CREATE TABLE "DEPENSES_FIXES"(
  id integer NOT NULL,
  "DPF_LIBELLE" text,
  "DPF_JOUR_RETRAIT" integer,
  "DPF_MONTANT_A_VENIR" float4,
  "DPF_MONTANT_DECAISSE" float4,
  CONSTRAINT "DEPENSES_FIXES_pkey" PRIMARY KEY(id)
);


CREATE TABLE "GAINS_FIXES"(
  id integer NOT NULL,
  "GAINS_LIBELLE" text,
  "GAINS_JOUR_RETRAIT" integer,
  "GAINS_MONTANT_A_VENIR" float4,
  "GAINS_MONTANT_ENCAISSE" float4,
  CONSTRAINT "GAINS_FIXES_pkey" PRIMARY KEY(id)
);


CREATE TABLE "RESTE_A_VIVRE"(
  id integer NOT NULL,
  "RAV_SOLDE_BANQUE" float4,
  "RAV_DATE_MAJ" date,
  "RAV_NOM" text,
  CONSTRAINT "RESTE_A_VIVRE_pkey" PRIMARY KEY(id)
);

psql --version


