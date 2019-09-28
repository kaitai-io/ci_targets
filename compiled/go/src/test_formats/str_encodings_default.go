// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"golang.org/x/text/encoding/japanese"
	"golang.org/x/text/encoding/charmap"
)

type StrEncodingsDefault struct {
	LenOf1 uint16
	Str1 string
	Rest *StrEncodingsDefault_Subtype
	_io *kaitai.Stream
	_root *StrEncodingsDefault
	_parent interface{}
}

func (this *StrEncodingsDefault) Read(io *kaitai.Stream, parent interface{}, root *StrEncodingsDefault) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf1 = uint16(tmp1)
	tmp2, err := this._io.ReadBytes(int(this.LenOf1))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this.Str1 = string(tmp2)
	tmp3 := new(StrEncodingsDefault_Subtype)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Rest = tmp3
	return err
}
type StrEncodingsDefault_Subtype struct {
	LenOf2 uint16
	Str2 string
	LenOf3 uint16
	Str3 string
	LenOf4 uint16
	Str4 string
	_io *kaitai.Stream
	_root *StrEncodingsDefault
	_parent *StrEncodingsDefault
}

func (this *StrEncodingsDefault_Subtype) Read(io *kaitai.Stream, parent *StrEncodingsDefault, root *StrEncodingsDefault) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf2 = uint16(tmp4)
	tmp5, err := this._io.ReadBytes(int(this.LenOf2))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this.Str2 = string(tmp5)
	tmp6, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf3 = uint16(tmp6)
	tmp7, err := this._io.ReadBytes(int(this.LenOf3))
	if err != nil {
		return err
	}
	tmp7 = tmp7
	tmp8, err := kaitai.BytesToStr(tmp7, japanese.ShiftJIS.NewDecoder())
	if err != nil {
		return err
	}
	this.Str3 = tmp8
	tmp9, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.LenOf4 = uint16(tmp9)
	tmp10, err := this._io.ReadBytes(int(this.LenOf4))
	if err != nil {
		return err
	}
	tmp10 = tmp10
	tmp11, err := kaitai.BytesToStr(tmp10, charmap.CodePage437.NewDecoder())
	if err != nil {
		return err
	}
	this.Str4 = tmp11
	return err
}
