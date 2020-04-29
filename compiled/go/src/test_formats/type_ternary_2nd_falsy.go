// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type TypeTernary2ndFalsy struct {
	IntTruthy uint8
	Ut *TypeTernary2ndFalsy_Foo
	NullUt *TypeTernary2ndFalsy_Foo
	IntArray []uint8
	IntArrayEmpty []uint8
	_io *kaitai.Stream
	_root *TypeTernary2ndFalsy
	_parent interface{}
	_f_vFloatZero bool
	vFloatZero float64
	_f_t bool
	t bool
	_f_vIntNegZero bool
	vIntNegZero int
	_f_vIntZero bool
	vIntZero int8
	_f_nullUtInst bool
	nullUtInst *TypeTernary2ndFalsy_Foo
	_f_vNullUtInst bool
	vNullUtInst *TypeTernary2ndFalsy_Foo
	_f_vFalse bool
	vFalse bool
	_f_vStrEmpty bool
	vStrEmpty string
	_f_vIntArrayEmpty bool
	vIntArrayEmpty []uint8
	_f_vNullUt bool
	vNullUt *TypeTernary2ndFalsy_Foo
	_f_vFloatNegZero bool
	vFloatNegZero float64
	_f_vStrWZero bool
	vStrWZero string
}
func NewTypeTernary2ndFalsy() *TypeTernary2ndFalsy {
	return &TypeTernary2ndFalsy{
	}
}

func (this *TypeTernary2ndFalsy) Read(io *kaitai.Stream, parent interface{}, root *TypeTernary2ndFalsy) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.IntTruthy = tmp1
	tmp2 := NewTypeTernary2ndFalsy_Foo()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Ut = tmp2
	if (false) {
		tmp3 := NewTypeTernary2ndFalsy_Foo()
		err = tmp3.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.NullUt = tmp3
	}
	this.IntArray = make([]uint8, 2)
	for i := range this.IntArray {
		tmp4, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.IntArray[i] = tmp4
	}
	this.IntArrayEmpty = make([]uint8, 0)
	for i := range this.IntArrayEmpty {
		tmp5, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.IntArrayEmpty[i] = tmp5
	}
	return err
}
func (this *TypeTernary2ndFalsy) VFloatZero() (v float64, err error) {
	if (this._f_vFloatZero) {
		return this.vFloatZero, nil
	}
	var tmp6 float64;
	tmp7, err := this.T()
	if err != nil {
		return 0, err
	}
	if (tmp7) {
		tmp6 = 0.0
	} else {
		tmp6 = 3.14
	}
	this.vFloatZero = float64(tmp6)
	this._f_vFloatZero = true
	return this.vFloatZero, nil
}
func (this *TypeTernary2ndFalsy) T() (v bool, err error) {
	if (this._f_t) {
		return this.t, nil
	}
	this.t = bool(true)
	this._f_t = true
	return this.t, nil
}
func (this *TypeTernary2ndFalsy) VIntNegZero() (v int, err error) {
	if (this._f_vIntNegZero) {
		return this.vIntNegZero, nil
	}
	var tmp8 int;
	tmp9, err := this.T()
	if err != nil {
		return 0, err
	}
	if (tmp9) {
		tmp8 = -0
	} else {
		tmp8 = -20
	}
	this.vIntNegZero = int(tmp8)
	this._f_vIntNegZero = true
	return this.vIntNegZero, nil
}
func (this *TypeTernary2ndFalsy) VIntZero() (v int8, err error) {
	if (this._f_vIntZero) {
		return this.vIntZero, nil
	}
	var tmp10 int8;
	tmp11, err := this.T()
	if err != nil {
		return 0, err
	}
	if (tmp11) {
		tmp10 = 0
	} else {
		tmp10 = 10
	}
	this.vIntZero = int8(tmp10)
	this._f_vIntZero = true
	return this.vIntZero, nil
}
func (this *TypeTernary2ndFalsy) NullUtInst() (v *TypeTernary2ndFalsy_Foo, err error) {
	if (this._f_nullUtInst) {
		return this.nullUtInst, nil
	}
	if (false) {
		this.nullUtInst = this.Ut
	}
	this._f_nullUtInst = true
	return this.nullUtInst, nil
}
func (this *TypeTernary2ndFalsy) VNullUtInst() (v *TypeTernary2ndFalsy_Foo, err error) {
	if (this._f_vNullUtInst) {
		return this.vNullUtInst, nil
	}
	var tmp12 *TypeTernary2ndFalsy_Foo;
	tmp13, err := this.T()
	if err != nil {
		return nil, err
	}
	if (tmp13) {
		tmp14, err := this.NullUtInst()
		if err != nil {
			return nil, err
		}
		tmp12 = tmp14
	} else {
		tmp12 = this.Ut
	}
	this.vNullUtInst = tmp12
	this._f_vNullUtInst = true
	return this.vNullUtInst, nil
}
func (this *TypeTernary2ndFalsy) VFalse() (v bool, err error) {
	if (this._f_vFalse) {
		return this.vFalse, nil
	}
	var tmp15 bool;
	tmp16, err := this.T()
	if err != nil {
		return false, err
	}
	if (tmp16) {
		tmp15 = false
	} else {
		tmp15 = true
	}
	this.vFalse = bool(tmp15)
	this._f_vFalse = true
	return this.vFalse, nil
}
func (this *TypeTernary2ndFalsy) VStrEmpty() (v string, err error) {
	if (this._f_vStrEmpty) {
		return this.vStrEmpty, nil
	}
	var tmp17 string;
	tmp18, err := this.T()
	if err != nil {
		return "", err
	}
	if (tmp18) {
		tmp17 = ""
	} else {
		tmp17 = "kaitai"
	}
	this.vStrEmpty = string(tmp17)
	this._f_vStrEmpty = true
	return this.vStrEmpty, nil
}
func (this *TypeTernary2ndFalsy) VIntArrayEmpty() (v []uint8, err error) {
	if (this._f_vIntArrayEmpty) {
		return this.vIntArrayEmpty, nil
	}
	var tmp19 []uint8;
	tmp20, err := this.T()
	if err != nil {
		return nil, err
	}
	if (tmp20) {
		tmp19 = this.IntArrayEmpty
	} else {
		tmp19 = this.IntArray
	}
	this.vIntArrayEmpty = []uint8(tmp19)
	this._f_vIntArrayEmpty = true
	return this.vIntArrayEmpty, nil
}
func (this *TypeTernary2ndFalsy) VNullUt() (v *TypeTernary2ndFalsy_Foo, err error) {
	if (this._f_vNullUt) {
		return this.vNullUt, nil
	}
	var tmp21 *TypeTernary2ndFalsy_Foo;
	tmp22, err := this.T()
	if err != nil {
		return nil, err
	}
	if (tmp22) {
		tmp21 = this.NullUt
	} else {
		tmp21 = this.Ut
	}
	this.vNullUt = tmp21
	this._f_vNullUt = true
	return this.vNullUt, nil
}
func (this *TypeTernary2ndFalsy) VFloatNegZero() (v float64, err error) {
	if (this._f_vFloatNegZero) {
		return this.vFloatNegZero, nil
	}
	var tmp23 float64;
	tmp24, err := this.T()
	if err != nil {
		return 0, err
	}
	if (tmp24) {
		tmp23 = -0.0
	} else {
		tmp23 = -2.72
	}
	this.vFloatNegZero = float64(tmp23)
	this._f_vFloatNegZero = true
	return this.vFloatNegZero, nil
}
func (this *TypeTernary2ndFalsy) VStrWZero() (v string, err error) {
	if (this._f_vStrWZero) {
		return this.vStrWZero, nil
	}
	var tmp25 string;
	tmp26, err := this.T()
	if err != nil {
		return "", err
	}
	if (tmp26) {
		tmp25 = "0"
	} else {
		tmp25 = "30"
	}
	this.vStrWZero = string(tmp25)
	this._f_vStrWZero = true
	return this.vStrWZero, nil
}
type TypeTernary2ndFalsy_Foo struct {
	M uint8
	_io *kaitai.Stream
	_root *TypeTernary2ndFalsy
	_parent *TypeTernary2ndFalsy
}
func NewTypeTernary2ndFalsy_Foo() *TypeTernary2ndFalsy_Foo {
	return &TypeTernary2ndFalsy_Foo{
	}
}

func (this *TypeTernary2ndFalsy_Foo) Read(io *kaitai.Stream, parent *TypeTernary2ndFalsy, root *TypeTernary2ndFalsy) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp27, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.M = tmp27
	return err
}
