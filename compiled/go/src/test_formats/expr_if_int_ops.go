// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ExprIfIntOps struct {
	Skip []byte
	It int16
	Boxed int16
	_io *kaitai.Stream
	_root *ExprIfIntOps
	_parent kaitai.Struct
	_f_isEqBoxed bool
	isEqBoxed bool
	_f_isEqPrim bool
	isEqPrim bool
}
func NewExprIfIntOps() *ExprIfIntOps {
	return &ExprIfIntOps{
	}
}

func (this ExprIfIntOps) IO_() *kaitai.Stream {
	return this._io
}

func (this *ExprIfIntOps) Read(io *kaitai.Stream, parent kaitai.Struct, root *ExprIfIntOps) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(2))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Skip = tmp1
	if (true) {
		tmp2, err := this._io.ReadS2le()
		if err != nil {
			return err
		}
		this.It = int16(tmp2)
	}
	if (true) {
		tmp3, err := this._io.ReadS2le()
		if err != nil {
			return err
		}
		this.Boxed = int16(tmp3)
	}
	return err
}
func (this *ExprIfIntOps) IsEqBoxed() (v bool, err error) {
	if (this._f_isEqBoxed) {
		return this.isEqBoxed, nil
	}
	this._f_isEqBoxed = true
	this.isEqBoxed = bool(this.It == this.Boxed)
	return this.isEqBoxed, nil
}
func (this *ExprIfIntOps) IsEqPrim() (v bool, err error) {
	if (this._f_isEqPrim) {
		return this.isEqPrim, nil
	}
	this._f_isEqPrim = true
	this.isEqPrim = bool(this.It == 16705)
	return this.isEqPrim, nil
}
