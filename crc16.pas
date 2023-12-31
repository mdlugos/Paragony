unit crc16;

interface

function crc(s: String): Word;

implementation

function crc(s: string):Word;
const
crc16htab: array[0..255] of byte = (
            $00, $10, $20, $30, $40, $50, $60, $70,
            $81, $91, $a1, $b1, $c1, $d1, $e1, $f1,
            $12, $02, $32, $22, $52, $42, $72, $62,
            $93, $83, $b3, $a3, $d3, $c3, $f3, $e3,
            $24, $34, $04, $14, $64, $74, $44, $54,
            $a5, $b5, $85, $95, $e5, $f5, $c5, $d5,
            $36, $26, $16, $06, $76, $66, $56, $46,
            $b7, $a7, $97, $87, $f7, $e7, $d7, $c7,
            $48, $58, $68, $78, $08, $18, $28, $38,
            $c9, $d9, $e9, $f9, $89, $99, $a9, $b9,
            $5a, $4a, $7a, $6a, $1a, $0a, $3a, $2a,
            $db, $cb, $fb, $eb, $9b, $8b, $bb, $ab,
            $6c, $7c, $4c, $5c, $2c, $3c, $0c, $1c,
            $ed, $fd, $cd, $dd, $ad, $bd, $8d, $9d,
            $7e, $6e, $5e, $4e, $3e, $2e, $1e, $0e,
            $ff, $ef, $df, $cf, $bf, $af, $9f, $8f,
            $91, $81, $b1, $a1, $d1, $c1, $f1, $e1,
            $10, $00, $30, $20, $50, $40, $70, $60,
            $83, $93, $a3, $b3, $c3, $d3, $e3, $f3,
            $02, $12, $22, $32, $42, $52, $62, $72,
            $b5, $a5, $95, $85, $f5, $e5, $d5, $c5,
            $34, $24, $14, $04, $74, $64, $54, $44,
            $a7, $b7, $87, $97, $e7, $f7, $c7, $d7,
            $26, $36, $06, $16, $66, $76, $46, $56,
            $d9, $c9, $f9, $e9, $99, $89, $b9, $a9,
            $58, $48, $78, $68, $18, $08, $38, $28,
            $cb, $db, $eb, $fb, $8b, $9b, $ab, $bb,
            $4a, $5a, $6a, $7a, $0a, $1a, $2a, $3a,
            $fd, $ed, $dd, $cd, $bd, $ad, $9d, $8d,
            $7c, $6c, $5c, $4c, $3c, $2c, $1c, $0c,
            $ef, $ff, $cf, $df, $af, $bf, $8f, $9f,
            $6e, $7e, $4e, $5e, $2e, $3e, $0e, $1e);

crc16ltab: array[0..255] of byte = (
            $00, $21, $42, $63, $84, $a5, $c6, $e7,
            $08, $29, $4a, $6b, $8c, $ad, $ce, $ef,
            $31, $10, $73, $52, $b5, $94, $f7, $d6,
            $39, $18, $7b, $5a, $bd, $9c, $ff, $de,
            $62, $43, $20, $01, $e6, $c7, $a4, $85,
            $6a, $4b, $28, $09, $ee, $cf, $ac, $8d,
            $53, $72, $11, $30, $d7, $f6, $95, $b4,
            $5b, $7a, $19, $38, $df, $fe, $9d, $bc,
            $c4, $e5, $86, $a7, $40, $61, $02, $23,
            $cc, $ed, $8e, $af, $48, $69, $0a, $2b,
            $f5, $d4, $b7, $96, $71, $50, $33, $12,
            $fd, $dc, $bf, $9e, $79, $58, $3b, $1a,
            $a6, $87, $e4, $c5, $22, $03, $60, $41,
            $ae, $8f, $ec, $cd, $2a, $0b, $68, $49,
            $97, $b6, $d5, $f4, $13, $32, $51, $70,
            $9f, $be, $dd, $fc, $1b, $3a, $59, $78,
            $88, $a9, $ca, $eb, $0c, $2d, $4e, $6f,
            $80, $a1, $c2, $e3, $04, $25, $46, $67,
            $b9, $98, $fb, $da, $3d, $1c, $7f, $5e,
            $b1, $90, $f3, $d2, $35, $14, $77, $56,
            $ea, $cb, $a8, $89, $6e, $4f, $2c, $0d,
            $e2, $c3, $a0, $81, $66, $47, $24, $05,
            $db, $fa, $99, $b8, $5f, $7e, $1d, $3c,
            $d3, $f2, $91, $b0, $57, $76, $15, $34,
            $4c, $6d, $0e, $2f, $c8, $e9, $8a, $ab,
            $44, $65, $06, $27, $c0, $e1, $82, $a3,
            $7d, $5c, $3f, $1e, $f9, $d8, $bb, $9a,
            $75, $54, $37, $16, $f1, $d0, $b3, $92,
            $2e, $0f, $6c, $4d, $aa, $8b, $e8, $c9,
            $26, $07, $64, $45, $a2, $83, $e0, $c1,
            $1f, $3e, $5d, $7c, $9b, $ba, $d9, $f8,
            $17, $36, $55, $74, $93, $b2, $d1, $f0);
var
  hi, lo, index :Byte;
  i: Integer;
begin
  hi:=0;
  lo:=0;

  for i:=1 To Length(s) do begin
    index := hi xor Ord(s[i]);
    hi := lo xor crc16htab[index];
    lo :=        crc16ltab[index];
  end;
  Result := (hi shl 8) or lo;
end;

end.
