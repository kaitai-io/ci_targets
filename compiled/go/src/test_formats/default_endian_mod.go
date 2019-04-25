// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type DefaultEndianMod struct {
	Main *DefaultEndianMod_MainObj
	_io *kaitai.Stream
	_root *DefaultEndianMod
	_parent interface{}
}

func (this *DefaultEndianMod) Read(io *kaitai.Stream, parent interface{}, root *DefaultEndianMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(DefaultEndianMod_MainObj)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Main = tmp1
	return err
}
type DefaultEndianMod_MainObj struct {
	One int32
	Nest *DefaultEndianMod_MainObj_Subnest
	NestBe *DefaultEndianMod_MainObj_SubnestBe
	_io *kaitai.Stream
	_root *DefaultEndianMod
	_parent *DefaultEndianMod
}

func (this *DefaultEndianMod_MainObj) Read(io *kaitai.Stream, parent *DefaultEndianMod, root *DefaultEndianMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp2, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.One = tmp2
	tmp3 := new(DefaultEndianMod_MainObj_Subnest)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Nest = tmp3
	tmp4 := new(DefaultEndianMod_MainObj_SubnestBe)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.NestBe = tmp4
	return err
}
type DefaultEndianMod_MainObj_Subnest struct {
	Two int32
	_io *kaitai.Stream
	_root *DefaultEndianMod
	_parent *DefaultEndianMod_MainObj
}

func (this *DefaultEndianMod_MainObj_Subnest) Read(io *kaitai.Stream, parent *DefaultEndianMod_MainObj, root *DefaultEndianMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadS4le()
	if err != nil {
		return err
	}
	this.Two = tmp5
	return err
}
type DefaultEndianMod_MainObj_SubnestBe struct {
	Two int32
	_io *kaitai.Stream
	_root *DefaultEndianMod
	_parent *DefaultEndianMod_MainObj
}

func (this *DefaultEndianMod_MainObj_SubnestBe) Read(io *kaitai.Stream, parent *DefaultEndianMod_MainObj, root *DefaultEndianMod) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadS4be()
	if err != nil {
		return err
	}
	this.Two = tmp6
	return err
}
