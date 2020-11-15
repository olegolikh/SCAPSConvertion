unit SomeFunction;

interface

uses
  Classes;

 const DirecName:array[1..4]of string=
      ('Iron','Boron','Temperature','Thickness');
      ShortDirecName:array[1..4]of string=('Fe','B','T','d');
      FileHeader='nFsrh nFBsrh dnsrh nF nFB dn';


function EditString(str:string):string;
function NumberToString(Number:double;DigitNumber:word=4):string;
function SubDirectoryName(Number1,Number2:word):string;
function SubDirectorySault(Number1,Number2:word):string;
function DataFileHeader(Number1,Number2:word):string;
function MatrixFileHeader(Number1:word):string;
function DataLabel(Number1,Number2:word):string;
function DataStringConvert(Souce:string):string;
function DataStringConvertNew(Souce:string;StartPosition:word=0):string;
function PartOfDataFileName(Key:string):string;
function DataFileName(Number1,Number2:word;Key1,Key2:string):string;
function MatrixFileName(Number1:word;Key1:string):string;
procedure KeysAndStringListToStringList(Key:string;Souce,Target:TStringList);
function LogKey(Key:string):string;

implementation

uses
  StrUtils, SysUtils, OlegFunction, Math;

function EditString(str:string):string;
begin
  try
   if StrToFloat(str)<1 then
      begin
      Result:=IntToStr(Round(1e6*StrToFloat(str)));
      Exit;
      end;
  finally

  end;

  Result:=AnsiReplaceStr(str,'.','p');
  Result:=AnsiReplaceStr(Result,'+','');
  while AnsiPos ('0E', Result)>5 do
      Result:=AnsiReplaceStr(Result,'0E','E');
  while AnsiPos ('0e', Result)>5 do
      Result:=AnsiReplaceStr(Result,'0e','e');
end;


function NumberToString(Number: double; DigitNumber: word): string;
begin
  Result:=LowerCase(floattostrF(Number,ffExponent,DigitNumber,2));
  Result:=EditString(Result);
end;

function SubDirectorySault(Number1,Number2:word):string;
begin
  case Number1 of
   1:if Number2=1
         then Result:=ShortDirecName[2]
         else Result:=ShortDirecName[3];
   2:if Number2=1
         then Result:=ShortDirecName[1]
         else Result:=ShortDirecName[3];
   else if Number2=1
         then Result:=ShortDirecName[1]
         else Result:=ShortDirecName[2];
  end;
end;

function SubDirectoryName(Number1,Number2:word):string;
begin
  case Number1 of
   1:if Number2=1 then Result:=DirecName[2] else Result:=DirecName[3];
   2:if Number2=1 then Result:=DirecName[1] else Result:=DirecName[3];
   else if Number2=1 then Result:=DirecName[1] else Result:=DirecName[2];
  end;
end;

function DataLabel(Number1,Number2:word):string;
begin
  case Number1 of
   1:if Number2=1 then Result:=ShortDirecName[3] else Result:=ShortDirecName[2];
   2:if Number2=1 then Result:=ShortDirecName[3] else Result:=ShortDirecName[1];
   else if Number2=1 then Result:=ShortDirecName[2] else Result:=ShortDirecName[1];
  end;
end;

function DataFileHeader(Number1,Number2:word):string;
begin
  Result:=DataLabel(Number1,Number2)+' '+FileHeader;
//  case Number1 of
//   1:if Number2=1 then Result:=ShortDirecName[3] else Result:=ShortDirecName[2];
//   2:if Number2=1 then Result:=ShortDirecName[3] else Result:=ShortDirecName[1];
//   else if Number2=1 then Result:=ShortDirecName[2] else Result:=ShortDirecName[1];
//  end;
//  Result:=Result+' '+FileHeader;
end;

function MatrixFileHeader(Number1:word):string;
begin
  case Number1 of
   1:Result:=ShortDirecName[2]+' '+ShortDirecName[3];
   2:Result:=ShortDirecName[1]+' '+ShortDirecName[3];
   else Result:=ShortDirecName[1]+' '+ShortDirecName[2];
  end;
  Result:=Result+' '+FileHeader;
end;


function DataStringConvert(Souce:string):string;
 var nFe,nFeSRH,nFeB,nFeBSRH:double;
begin
 nFe:=FloatDataFromRow(Souce,1);
 nFeSRH:=FloatDataFromRow(Souce,2);
 nFeB:=FloatDataFromRow(Souce,3);
 nFeBSRH:=FloatDataFromRow(Souce,4);
 Result:=StringDataFromRow(Souce,2)+' '
         +StringDataFromRow(Souce,4)+' '
         +FloatToStrF(nFeSRH-nFeBSRH,ffExponent,10,2)+' '
         +StringDataFromRow(Souce,1)+' '
         +StringDataFromRow(Souce,3)+' '
         +FloatToStrF(nFe-nFeB,ffExponent,10,2);
end;

function DataStringConvertNew(Souce:string;StartPosition:word=0):string;
 var nFe,nFeSRH,nFeB,nFeBSRH:double;
     i:byte;
begin
 nFe:=FloatDataFromRow(Souce,1+StartPosition);
 nFeSRH:=FloatDataFromRow(Souce,2+StartPosition);
 nFeB:=FloatDataFromRow(Souce,3+StartPosition);
 nFeBSRH:=FloatDataFromRow(Souce,4+StartPosition);
 Result:='';
 for I := 1 to StartPosition
  do Result:=Result+StringDataFromRow(Souce,i)+' ';

 Result:=Result
         +StringDataFromRow(Souce,2+StartPosition)+' '
         +StringDataFromRow(Souce,4+StartPosition)+' '
         +FloatToStrF(nFeSRH-nFeBSRH,ffExponent,10,2)+' '
         +StringDataFromRow(Souce,1+StartPosition)+' '
         +StringDataFromRow(Souce,3+StartPosition)+' '
         +FloatToStrF(nFe-nFeB,ffExponent,10,2)+' '
         +FloatToStrF(nFeSRH-nFe,ffExponent,10,2)+' '
         +FloatToStrF(nFeBSRH-nFeB,ffExponent,10,2);
end;



function PartOfDataFileName(Key:string):string;
begin
  if (AnsiPos ('e',Key)>0)or(AnsiPos ('E',Key)>0)
   then  Result:=Key[1]+Key[3]+AnsiRightStr(Key, 1)
   else  Result:=Key[2]+Key[3];
end;

function DataFileName(Number1,Number2:word;Key1,Key2:string):string;
begin
 Result:=ShortDirecName[Number1]+PartOfDataFileName(Key1);
  case Number1 of
   1:if Number2=1 then Result:=Result
                       +ShortDirecName[2]
                       +PartOfDataFileName(Key2)
                       +'_'+ShortDirecName[3]
                  else Result:=Result
                       +ShortDirecName[3]
                       +PartOfDataFileName(Key2)
                       +'_'+ShortDirecName[2];

   2:if Number2=1 then Result:=Result
                       +ShortDirecName[1]
                       +PartOfDataFileName(Key2)
                       +'_'+ShortDirecName[3]
                  else Result:=Result
                       +ShortDirecName[3]
                       +PartOfDataFileName(Key2)
                       +'_'+ShortDirecName[1];
   else if Number2=1 then Result:=Result
                       +ShortDirecName[1]
                       +PartOfDataFileName(Key2)
                       +'_'+ShortDirecName[2]
                  else Result:=Result
                       +ShortDirecName[2]
                       +PartOfDataFileName(Key2)
                       +'_'+ShortDirecName[1];
  end;
 Result:=Result+'.dat';
end;

function MatrixFileName(Number1:word;Key1:string):string;
begin
  Result:=ShortDirecName[Number1]+PartOfDataFileName(Key1)
         +'_';
  case Number1 of
   1:Result:=Result+ShortDirecName[2]+ShortDirecName[3];
   2:Result:=Result+ShortDirecName[1]+ShortDirecName[3];
   else Result:=Result+ShortDirecName[1]+ShortDirecName[2];
  end;
  Result:=Result+'.dat';
end;

function LogKey(Key:string):string;
begin
  if ((AnsiPos ('e',Key)>0)or(AnsiPos ('E',Key)>0))
    then
      begin
      if (strtofloat(Key)>1)
        then Result:=FloatToStrF(Log10(strtofloat(Key)), ffExponent, 10, 2)
        else Result:=inttostr( Round(strtofloat(Key)*1e6))
      end
    else Result:=Key;


//  if ((AnsiPos ('e',Key)>0)or(AnsiPos ('E',Key)>0))
//     and  (strtofloat(Key)>1)
//        then Result:=FloatToStrF(Log10(strtofloat(Key)), ffExponent, 10, 2)
//        else  Result:=Key;
end;

procedure KeysAndStringListToStringList(Key:string;Souce,Target:TStringList);
var i:integer;
begin
  for I := 0 to Souce.Count - 1 do
   Target.Add(Key+' '+LogKey(StringDataFromRow(Souce[i],1))
            +' '+DeleteStringDataFromRow(Souce[i],1));
end;

end.
