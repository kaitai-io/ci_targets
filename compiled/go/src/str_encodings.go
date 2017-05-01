// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
import "io"
import "golang.org/x/text/encoding/charmap"
import "golang.org/x/text/encoding/traditionalchinese"
import "golang.org/x/text/encoding/japanese"

var _ = io.SeekStart
var _ = charmap.CodePage437
var _ = japanese.ShiftJIS
var _ = traditionalchinese.Big5

type StrEncodings struct {
	LenOf1 uint16
	Str1 string
	LenOf2 uint16
	Str2 string
	LenOf3 uint16
	Str3 string
	LenOf4 uint16
	Str4 string
	_io *kaitai.Stream
	_root *StrEncodings
	_parent interface{}
}

func (this *StrEncodings) Read(io *kaitai.Stream, parent interface{}, root *StrEncodings) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf1 = tmp1
	tmp2, err := this._io.ReadBytes(int(this.LenOf1))
	if err != nil {
		return err
	}
	this.Str1 = string(tmp2)
	tmp3, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf2 = tmp3
	tmp4, err := this._io.ReadBytes(int(this.LenOf2))
	if err != nil {
		return err
	}
	this.Str2 = string(tmp4)
	tmp5, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf3 = tmp5
	tmp6, err := this._io.ReadBytes(int(this.LenOf3))
	if err != nil {
		return err
	}
	tmp7, err := kaitai.BytesToStr(tmp6, japanese.ShiftJIS.NewDecoder())
	if err != nil {
		return err
	}
	this.Str3 = tmp7
	tmp8, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf4 = tmp8
	tmp9, err := this._io.ReadBytes(int(this.LenOf4))
	if err != nil {
		return err
	}
	tmp10, err := kaitai.BytesToStr(tmp9, charmap.CodePage437.NewDecoder())
	if err != nil {
		return err
	}
	this.Str4 = tmp10
	return err
}
