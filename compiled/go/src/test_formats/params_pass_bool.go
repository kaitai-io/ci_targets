// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsPassBool struct {
	SFalse bool
	STrue bool
	SeqB1 *ParamsPassBool_ParamTypeB1
	SeqBool *ParamsPassBool_ParamTypeBool
	LiteralB1 *ParamsPassBool_ParamTypeB1
	LiteralBool *ParamsPassBool_ParamTypeBool
	InstB1 *ParamsPassBool_ParamTypeB1
	InstBool *ParamsPassBool_ParamTypeBool
	_io *kaitai.Stream
	_root *ParamsPassBool
	_parent interface{}
	_f_vFalse bool
	vFalse bool
	_f_vTrue bool
	vTrue bool
}
func NewParamsPassBool() *ParamsPassBool {
	return &ParamsPassBool{
	}
}

func (this *ParamsPassBool) Read(io *kaitai.Stream, parent interface{}, root *ParamsPassBool) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsIntBe(1)
	if err != nil {
		return err
	}
	this.SFalse = tmp1 != 0
	tmp2, err := this._io.ReadBitsIntBe(1)
	if err != nil {
		return err
	}
	this.STrue = tmp2 != 0
	this._io.AlignToByte()
	tmp3 := NewParamsPassBool_ParamTypeB1(this.STrue)
	err = tmp3.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.SeqB1 = tmp3
	tmp4 := NewParamsPassBool_ParamTypeBool(this.SFalse)
	err = tmp4.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.SeqBool = tmp4
	tmp5 := NewParamsPassBool_ParamTypeB1(false)
	err = tmp5.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.LiteralB1 = tmp5
	tmp6 := NewParamsPassBool_ParamTypeBool(true)
	err = tmp6.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.LiteralBool = tmp6
	tmp8, err := this.VTrue()
	if err != nil {
		return err
	}
	tmp7 := NewParamsPassBool_ParamTypeB1(tmp8)
	err = tmp7.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.InstB1 = tmp7
	tmp10, err := this.VFalse()
	if err != nil {
		return err
	}
	tmp9 := NewParamsPassBool_ParamTypeBool(tmp10)
	err = tmp9.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.InstBool = tmp9
	return err
}
func (this *ParamsPassBool) VFalse() (v bool, err error) {
	if (this._f_vFalse) {
		return this.vFalse, nil
	}
	this.vFalse = bool(false)
	this._f_vFalse = true
	return this.vFalse, nil
}
func (this *ParamsPassBool) VTrue() (v bool, err error) {
	if (this._f_vTrue) {
		return this.vTrue, nil
	}
	this.vTrue = bool(true)
	this._f_vTrue = true
	return this.vTrue, nil
}
type ParamsPassBool_ParamTypeB1 struct {
	Foo []byte
	Arg bool
	_io *kaitai.Stream
	_root *ParamsPassBool
	_parent *ParamsPassBool
}
func NewParamsPassBool_ParamTypeB1(arg bool) *ParamsPassBool_ParamTypeB1 {
	return &ParamsPassBool_ParamTypeB1{
		Arg: arg,
	}
}

func (this *ParamsPassBool_ParamTypeB1) Read(io *kaitai.Stream, parent *ParamsPassBool, root *ParamsPassBool) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	var tmp11 int8;
	if (this.Arg) {
		tmp11 = 1
	} else {
		tmp11 = 2
	}
	tmp12, err := this._io.ReadBytes(int(tmp11))
	if err != nil {
		return err
	}
	tmp12 = tmp12
	this.Foo = tmp12
	return err
}
type ParamsPassBool_ParamTypeBool struct {
	Foo []byte
	Arg bool
	_io *kaitai.Stream
	_root *ParamsPassBool
	_parent *ParamsPassBool
}
func NewParamsPassBool_ParamTypeBool(arg bool) *ParamsPassBool_ParamTypeBool {
	return &ParamsPassBool_ParamTypeBool{
		Arg: arg,
	}
}

func (this *ParamsPassBool_ParamTypeBool) Read(io *kaitai.Stream, parent *ParamsPassBool, root *ParamsPassBool) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	var tmp13 int8;
	if (this.Arg) {
		tmp13 = 1
	} else {
		tmp13 = 2
	}
	tmp14, err := this._io.ReadBytes(int(tmp13))
	if err != nil {
		return err
	}
	tmp14 = tmp14
	this.Foo = tmp14
	return err
}
