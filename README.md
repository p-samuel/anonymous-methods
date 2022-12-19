# delphi-anonymous-methods


In this sample, I tried to demonstrate how to simulate some main JavaScript's array utilities functions in Delphi Pascal language by using generic anonymous methods.

## Filter

``` pascal

  LNumbers := TArray<Integer>.Create(1, 3, 4, 5, 6, 14, 15, 17, 22, 23, 25, 32);
  
  FilteredNumbers := TUtil.Filter<Integer>(LNumbers, 
    function (ANumber: Integer): Boolean
    begin
      Result := (ANumber mod 3 = 0);
    end);

```

## Map

``` pascal

  LWords := TArray<String>.Create('a', 'b', 'c', 'd', 'e');
  UpperCaseWords := TUtil.Map<String>(LWords, 
    function (AWord: String): String
    begin
      Result := UpperCase(AWord);
    end
  );

```

## Reduce

``` pascal 

  LScores := TArray<Double>.Create(8.5, 6.5, 7.8, 10);
  LTotal := TUtil.Reduce<Double>(LScores, 
    function (Acc, Item: Double): Double
    begin
      Result := Acc + Item;
    end, 0);

```

## Find

``` pascal 

  //Find first item which price is equal to 200.
  LCart := TArray<TItem>.Create(
    TItem.Create('Bike', 400),
    TItem.Create('Clock', 15),
    TItem.Create('Closet', 200),
    TItem.Create('Cabin', 200),
    TItem.Create('Stove', 100),
    TItem.Create('Pots', 20)
  );
  
  LItem := TUtil.Find<TItem>(LCart, 
    function (Item: TItem): Boolean
    begin
      Result := Item.Price = 200;
    end);

```

## Every

```pascal

  LNames := TArray<String>.Create('Samuel', 'Bob', 'Obama', 'Andrew', 'Julia');
  LEvery := TUtil.Every<String>(LNames, 
    function (Name: String): Boolean
    begin
      Result := Name.ToLower().Contains('a');
    end);

```

## Some

```pascal

  LNumbers := TArray<Integer>.Create(0, 1, 2, 3, 4);
  LSome := TUtil.Some<Integer>(LNumbers, 
    function (Number: Integer): Boolean
    begin
      Result := Number > 5;
    end);

```


## ForEach

``` pascal

  LNumbers := TArray<Integer>.Create(1, 2, 3, 4, 5);
  TUtil.ForEach<Integer>(LNumbers, 
    function (Number: Integer): Integer
    begin
      Result := Number + 1000;
    end);

```
