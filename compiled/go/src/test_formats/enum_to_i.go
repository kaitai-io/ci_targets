// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"strconv"
)


type EnumToI_Animal int
const (
	EnumToI_Animal__Dog EnumToI_Animal = 4
	EnumToI_Animal__Cat EnumToI_Animal = 7
	EnumToI_Animal__Chicken EnumToI_Animal = 12
)
var values_EnumToI_Animal = map[EnumToI_Animal]struct{}{4: {}, 7: {}, 12: {}}
func (v EnumToI_Animal) isDefined() bool {
	_, ok := values_EnumToI_Animal[v]
	return ok
}
type EnumToI struct {
	Pet1 EnumToI_Animal
	Pet2 EnumToI_Animal
	_io *kaitai.Stream
	_root *EnumToI
	_parent kaitai.Struct
	_f_oneLtTwo bool
	oneLtTwo bool
	_f_pet1EqInt bool
	pet1EqInt bool
	_f_pet1I bool
	pet1I int
	_f_pet1IToS bool
	pet1IToS string
	_f_pet1Mod bool
	pet1Mod int
	_f_pet2EqInt bool
	pet2EqInt bool
}
func NewEnumToI() *EnumToI {
	return &EnumToI{
	}
}

func (this EnumToI) IO_() *kaitai.Stream {
	return this._io
}

func (this *EnumToI) Read(io *kaitai.Stream, parent kaitai.Struct, root *EnumToI) (err error) {
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
func (this *EnumToI) OneLtTwo() (v bool, err error) {
	if (this._f_oneLtTwo) {
		return this.oneLtTwo, nil
	}
	this._f_oneLtTwo = true
	this.oneLtTwo = bool(this.Pet1 < this.Pet2)
	return this.oneLtTwo, nil
}
func (this *EnumToI) Pet1EqInt() (v bool, err error) {
	if (this._f_pet1EqInt) {
		return this.pet1EqInt, nil
	}
	this._f_pet1EqInt = true
	this.pet1EqInt = bool(this.Pet1 == 7)
	return this.pet1EqInt, nil
}
func (this *EnumToI) Pet1I() (v int, err error) {
	if (this._f_pet1I) {
		return this.pet1I, nil
	}
	this._f_pet1I = true
	this.pet1I = int(this.Pet1)
	return this.pet1I, nil
}
func (this *EnumToI) Pet1IToS() (v string, err error) {
	if (this._f_pet1IToS) {
		return this.pet1IToS, nil
	}
	this._f_pet1IToS = true
	this.pet1IToS = string(strconv.FormatInt(int64(this.Pet1), 10))
	return this.pet1IToS, nil
}
func (this *EnumToI) Pet1Mod() (v int, err error) {
	if (this._f_pet1Mod) {
		return this.pet1Mod, nil
	}
	this._f_pet1Mod = true
	this.pet1Mod = int(this.Pet1 + 32768)
	return this.pet1Mod, nil
}
func (this *EnumToI) Pet2EqInt() (v bool, err error) {
	if (this._f_pet2EqInt) {
		return this.pet2EqInt, nil
	}
	this._f_pet2EqInt = true
	this.pet2EqInt = bool(this.Pet2 == 5)
	return this.pet2EqInt, nil
}
