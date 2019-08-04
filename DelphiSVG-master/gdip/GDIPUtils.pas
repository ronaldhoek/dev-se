unit GDIPUtils;

interface

uses
  System.Math.Vectors,
  Winapi.GDIPAPI, Winapi.GDIPOBJ;

type
  TBoxAlignment = (baTopLeft, baTopCenter, baTopRight,
    baCenterLeft, baCenterCenter, baCenterRight,
    baBottomLeft, baBottomCenter, baBottomRight);

function CalcRect(const Bounds: TGPRectF; const Width, Height: Double;
  const Alignment: TBoxAlignment): TGPRectF;

function GetGPMatrix(const Matrix: TMatrix): TGPMatrix;

implementation

function CalcRect(const Bounds: TGPRectF; const Width, Height: Double;
  const Alignment: TBoxAlignment): TGPRectF;
var
  R: Double;
begin
  if Height > 0 then
    R :=  Width / Height
  else
    R := 1;

  if (Bounds.Height <> 0) and
     (Bounds.Width / Bounds.Height > R) then
  begin
    Result.Width := Bounds.Height * R;
    Result.Height := Bounds.Height;
  end else
  begin
    Result.Width := Bounds.Width;
    Result.Height := Bounds.Width / R;
  end;

  case Alignment of
    baTopCenter, baCenterCenter, baBottomCenter:
      Result.X := (Bounds.Width - Result.Width) / 2;
    baTopRight, baCenterRight, baBottomRight:
      Result.X := Bounds.Width - Result.Width;
    else
      Result.X := 0;
  end;

  case Alignment of
    baCenterLeft, baCenterCenter, baCenterRight:
      Result.Y := (Bounds.Height - Result.Height) / 2;
    baBottomLeft, baBottomCenter, baBottomRight:
      Result.Y := Bounds.Height - Result.Height;
    else
      Result.Y := 0;
  end;

  Result.X := Result.X + Bounds.X;
  Result.Y := Result.Y + Bounds.Y;
end;

function GetGPMatrix(const Matrix: TMatrix): TGPMatrix;
begin
  Result := TGPMatrix.Create(Matrix.m11, Matrix.m12, Matrix.m21, Matrix.m22, Matrix.m31,
    Matrix.m32);
end;

end.
