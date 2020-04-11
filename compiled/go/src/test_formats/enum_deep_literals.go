// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type EnumDeepLiterals struct {
	Pet1 EnumDeepLiterals_Container1_Animal
	Pet2 EnumDeepLiterals_Container1_Container2_Animal
	_io *kaitai.Stream
	_root *EnumDeepLiterals
	_parent interface{}
	_f_isPet1Ok bool
	isPet1Ok bool
	_f_isPet2Ok bool
	isPet2Ok bool
}
func NewEnumDeepLiterals() *EnumDeepLiterals {
	return &EnumDeepLiterals{
	}
}

func (this *EnumDeepLiterals) Read(io *kaitai.Stream, parent interface{}, root *EnumDeepLiterals) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet1 = EnumDeepLiterals_Container1_Animal(tmp1)
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet2 = EnumDeepLiterals_Container1_Container2_Animal(tmp2)
	return err
}
func (this *EnumDeepLiterals) IsPet1Ok() (v bool, err error) {
	if (this._f_isPet1Ok) {
		return this.isPet1Ok, nil
	}
	this.isPet1Ok = bool(this.Pet1 == EnumDeepLiterals_Container1_Animal__Cat)
	this._f_isPet1Ok = true
	return this.isPet1Ok, nil
}
func (this *EnumDeepLiterals) IsPet2Ok() (v bool, err error) {
	if (this._f_isPet2Ok) {
		return this.isPet2Ok, nil
	}
	this.isPet2Ok = bool(this.Pet2 == EnumDeepLiterals_Container1_Container2_Animal__Hare)
	this._f_isPet2Ok = true
	return this.isPet2Ok, nil
}

type EnumDeepLiterals_Container1_Animal int
const (
	EnumDeepLiterals_Container1_Animal__Dog EnumDeepLiterals_Container1_Animal = 4
	EnumDeepLiterals_Container1_Animal__Cat EnumDeepLiterals_Container1_Animal = 7
	EnumDeepLiterals_Container1_Animal__Chicken EnumDeepLiterals_Container1_Animal = 12
)
type EnumDeepLiterals_Container1 struct {
	_io *kaitai.Stream
	_root *EnumDeepLiterals
	_parent interface{}
}
func NewEnumDeepLiterals_Container1() *EnumDeepLiterals_Container1 {
	return &EnumDeepLiterals_Container1{
	}
}

func (this *EnumDeepLiterals_Container1) Read(io *kaitai.Stream, parent interface{}, root *EnumDeepLiterals) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}

type EnumDeepLiterals_Container1_Container2_Animal int
const (
	EnumDeepLiterals_Container1_Container2_Animal__Canary EnumDeepLiterals_Container1_Container2_Animal = 4
	EnumDeepLiterals_Container1_Container2_Animal__Turtle EnumDeepLiterals_Container1_Container2_Animal = 7
	EnumDeepLiterals_Container1_Container2_Animal__Hare EnumDeepLiterals_Container1_Container2_Animal = 12
)
type EnumDeepLiterals_Container1_Container2 struct {
	_io *kaitai.Stream
	_root *EnumDeepLiterals
	_parent interface{}
}
func NewEnumDeepLiterals_Container1_Container2() *EnumDeepLiterals_Container1_Container2 {
	return &EnumDeepLiterals_Container1_Container2{
	}
}

func (this *EnumDeepLiterals_Container1_Container2) Read(io *kaitai.Stream, parent interface{}, root *EnumDeepLiterals) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
