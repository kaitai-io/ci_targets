// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"


type EnumOfValueInst_Animal int
const (
	EnumOfValueInst_Animal__Dog EnumOfValueInst_Animal = 4
	EnumOfValueInst_Animal__Cat EnumOfValueInst_Animal = 7
	EnumOfValueInst_Animal__Chicken EnumOfValueInst_Animal = 12
)
type EnumOfValueInst struct {
	Pet1 EnumOfValueInst_Animal
	Pet2 EnumOfValueInst_Animal
	_io *kaitai.Stream
	_root *EnumOfValueInst
	_parent interface{}
	_f_pet3 bool
	pet3 EnumOfValueInst_Animal
	_f_pet4 bool
	pet4 EnumOfValueInst_Animal
}
func NewEnumOfValueInst() *EnumOfValueInst {
	return &EnumOfValueInst{
	}
}

func (this *EnumOfValueInst) Read(io *kaitai.Stream, parent interface{}, root *EnumOfValueInst) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet1 = EnumOfValueInst_Animal(tmp1)
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Pet2 = EnumOfValueInst_Animal(tmp2)
	return err
}
func (this *EnumOfValueInst) Pet3() (v EnumOfValueInst_Animal, err error) {
	if (this._f_pet3) {
		return this.pet3, nil
	}
	var tmp3 int8;
	if (this.Pet1 == EnumOfValueInst_Animal__Cat) {
		tmp3 = 4
	} else {
		tmp3 = 12
	}
	this.pet3 = EnumOfValueInst_Animal(EnumOfValueInst_Animal(tmp3))
	this._f_pet3 = true
	return this.pet3, nil
}
func (this *EnumOfValueInst) Pet4() (v EnumOfValueInst_Animal, err error) {
	if (this._f_pet4) {
		return this.pet4, nil
	}
	var tmp4 EnumOfValueInst_Animal;
	if (this.Pet1 == EnumOfValueInst_Animal__Cat) {
		tmp4 = EnumOfValueInst_Animal__Dog
	} else {
		tmp4 = EnumOfValueInst_Animal__Chicken
	}
	this.pet4 = EnumOfValueInst_Animal(tmp4)
	this._f_pet4 = true
	return this.pet4, nil
}
