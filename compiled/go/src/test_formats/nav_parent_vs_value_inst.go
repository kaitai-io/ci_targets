// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NavParentVsValueInst struct {
	S1 string
	Child *NavParentVsValueInst_ChildObj
	_io *kaitai.Stream
	_root *NavParentVsValueInst
	_parent interface{}
}
func NewNavParentVsValueInst() *NavParentVsValueInst {
	return &NavParentVsValueInst{
	}
}

func (this *NavParentVsValueInst) Read(io *kaitai.Stream, parent interface{}, root *NavParentVsValueInst) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytesTerm(124, false, true, true)
	if err != nil {
		return err
	}
	this.S1 = string(tmp1)
	tmp2 := NewNavParentVsValueInst_ChildObj()
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Child = tmp2
	return err
}
type NavParentVsValueInst_ChildObj struct {
	_io *kaitai.Stream
	_root *NavParentVsValueInst
	_parent *NavParentVsValueInst
	_f_doSomething bool
	doSomething bool
}
func NewNavParentVsValueInst_ChildObj() *NavParentVsValueInst_ChildObj {
	return &NavParentVsValueInst_ChildObj{
	}
}

func (this *NavParentVsValueInst_ChildObj) Read(io *kaitai.Stream, parent *NavParentVsValueInst, root *NavParentVsValueInst) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *NavParentVsValueInst_ChildObj) DoSomething() (v bool, err error) {
	if (this._f_doSomething) {
		return this.doSomething, nil
	}
	var tmp3 bool;
	if (this._parent.S1 == "foo") {
		tmp3 = true
	} else {
		tmp3 = false
	}
	this.doSomething = bool(tmp3)
	this._f_doSomething = true
	return this.doSomething, nil
}
