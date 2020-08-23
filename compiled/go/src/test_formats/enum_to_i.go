// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type EnumToI_Animal int
const (
	EnumToI_Animal__Dog EnumToI_Animal = 4
	EnumToI_Animal__Cat EnumToI_Animal = 7
	EnumToI_Animal__Chicken EnumToI_Animal = 12
)
type EnumToI struct {
	Pet1 EnumToI_Animal
	Pet2 EnumToI_Animal
	_io *kaitai.Stream
	_root *EnumToI
	_parent interface{}
	_f_pet1I bool
	pet1I int
	_f_pet1EqInt bool
	pet1EqInt bool
	_f_oneLtTwo bool
	oneLtTwo bool
	_f_pet1Mod bool
	pet1Mod int
	_f_pet2EqInt bool
	pet2EqInt bool
}
func NewEnumToI() *EnumToI {
	return &EnumToI{
	}
}

func (this *EnumToI) Read(io *kaitai.Stream, parent interface{}, root *EnumToI) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet1 = EnumToI_Animal(tmp1)
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet2 = EnumToI_Animal(tmp2)
	return err
}
func (this *EnumToI) Pet1I() (v int, err error) {
	if (this._f_pet1I) {
		return this.pet1I, nil
	}
	this.pet1I = int(this.Pet1)
	this._f_pet1I = true
	return this.pet1I, nil
}
func (this *EnumToI) Pet1EqInt() (v bool, err error) {
	if (this._f_pet1EqInt) {
		return this.pet1EqInt, nil
	}
	this.pet1EqInt = bool(this.Pet1 == 7)
	this._f_pet1EqInt = true
	return this.pet1EqInt, nil
}
func (this *EnumToI) OneLtTwo() (v bool, err error) {
	if (this._f_oneLtTwo) {
		return this.oneLtTwo, nil
	}
	this.oneLtTwo = bool(this.Pet1 < this.Pet2)
	this._f_oneLtTwo = true
	return this.oneLtTwo, nil
}
func (this *EnumToI) Pet1Mod() (v int, err error) {
	if (this._f_pet1Mod) {
		return this.pet1Mod, nil
	}
	this.pet1Mod = int((this.Pet1 + 32768))
	this._f_pet1Mod = true
	return this.pet1Mod, nil
}
func (this *EnumToI) Pet2EqInt() (v bool, err error) {
	if (this._f_pet2EqInt) {
		return this.pet2EqInt, nil
	}
	this.pet2EqInt = bool(this.Pet2 == 5)
	this._f_pet2EqInt = true
	return this.pet2EqInt, nil
}
