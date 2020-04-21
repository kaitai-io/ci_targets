// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type DefaultBitEndianMod struct {
	Main *DefaultBitEndianMod_MainObj
	_io *kaitai.Stream
	_root *DefaultBitEndianMod
	_parent interface{}
}
func NewDefaultBitEndianMod() *DefaultBitEndianMod {
	return &DefaultBitEndianMod{
	}
}

func (this *DefaultBitEndianMod) Read(io *kaitai.Stream, parent interface{}, root *DefaultBitEndianMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewDefaultBitEndianMod_MainObj()
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Main = tmp1
	return err
}
type DefaultBitEndianMod_MainObj struct {
	One uint64
	Two uint64
	Nest *DefaultBitEndianMod_MainObj_Subnest
	NestBe *DefaultBitEndianMod_MainObj_SubnestBe
	_io *kaitai.Stream
	_root *DefaultBitEndianMod
	_parent *DefaultBitEndianMod
}
func NewDefaultBitEndianMod_MainObj() *DefaultBitEndianMod_MainObj {
	return &DefaultBitEndianMod_MainObj{
	}
}

func (this *DefaultBitEndianMod_MainObj) Read(io *kaitai.Stream, parent *DefaultBitEndianMod, root *DefaultBitEndianMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadBitsInt(9)
	if err != nil {
		return err
	}
	this.One = tmp2
	tmp3, err := this._io.ReadBitsInt(15)
	if err != nil {
		return err
	}
	this.Two = tmp3
	this._io.AlignToByte()
	tmp4 := NewDefaultBitEndianMod_MainObj_Subnest()
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Nest = tmp4
	tmp5 := NewDefaultBitEndianMod_MainObj_SubnestBe()
	err = tmp5.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.NestBe = tmp5
	return err
}
type DefaultBitEndianMod_MainObj_Subnest struct {
	Two uint64
	_io *kaitai.Stream
	_root *DefaultBitEndianMod
	_parent *DefaultBitEndianMod_MainObj
}
func NewDefaultBitEndianMod_MainObj_Subnest() *DefaultBitEndianMod_MainObj_Subnest {
	return &DefaultBitEndianMod_MainObj_Subnest{
	}
}

func (this *DefaultBitEndianMod_MainObj_Subnest) Read(io *kaitai.Stream, parent *DefaultBitEndianMod_MainObj, root *DefaultBitEndianMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadBitsInt(16)
	if err != nil {
		return err
	}
	this.Two = tmp6
	return err
}
type DefaultBitEndianMod_MainObj_SubnestBe struct {
	Two uint64
	_io *kaitai.Stream
	_root *DefaultBitEndianMod
	_parent *DefaultBitEndianMod_MainObj
}
func NewDefaultBitEndianMod_MainObj_SubnestBe() *DefaultBitEndianMod_MainObj_SubnestBe {
	return &DefaultBitEndianMod_MainObj_SubnestBe{
	}
}

func (this *DefaultBitEndianMod_MainObj_SubnestBe) Read(io *kaitai.Stream, parent *DefaultBitEndianMod_MainObj, root *DefaultBitEndianMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp7, err := this._io.ReadBitsInt(16)
	if err != nil {
		return err
	}
	this.Two = tmp7
	return err
}
