unit Example.Find;

interface

type
  TItem = class
  constructor Create(PName: String; PPrice: Currency);
  public
    Name: String;
    Price: Currency;
  end;

procedure Find;

implementation

uses
  System.SysUtils, Utils;

procedure Find;
var
  Item: TItem;
  Cart: TArray<TItem>;
begin
  //Find first item which price is equal to 200.
  Cart := TArray<TItem>.Create(
    TItem.Create('Bike', 400),
    TItem.Create('Clock', 15),
    TItem.Create('Closet', 200),
    TItem.Create('Cabin', 200),
    TItem.Create('Stove', 100),
    TItem.Create('Pots', 20)
  );
  Item := TUtil.Find<TItem>(Cart, function (Item: TItem): Boolean
  begin
    Result := Item.Price = 200;
  end);
  Writeln(Format('Name: %s, Price: %m', [Item.Name, Item.Price]));
end;

{ TItem }

constructor TItem.Create(PName: String; PPrice: Currency);
begin
  Name := PName;
  Price := PPrice;
end;

end.
