namespace com.sap.learning;

entity Books{
    key ID : UUID;
    title : String(255);
    stock : NoOfBooks;
    publCountry : String(3);
    price : Price;
    genre : Genre;
    isHardcover : Boolean;
};

type Genre : Integer enum{
    fiction = 1;
    non_fiction = 2;
}

type Price{
    amount : Decimal;
    currency : String(3);
}
type NoOfBooks : Integer;

entity Authors{
    key ID : UUID;
    name : String(100);
    dateOfBirth : Date;
    dateOfDeath: Date;
};