// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ExprIfIntOps struct {
	Skip []byte
	It int16
	Boxed int16
	_io *kaitai.Stream
	_root *ExprIfIntOps
	_parent interface{}
	_f_isEqPrim bool
	isEqPrim bool
	_f_isEqBoxed bool
	isEqBoxed bool
}
func NewExprIfIntOps() *ExprIfIntOps {
	return &ExprIfIntOps{
	}
}

func (this *ExprIfIntOps) Read(io *kaitai.Stream, parent interface{}, root *ExprIfIntOps) (err error) {
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
func (this *ExprIfIntOps) IsEqPrim() (v bool, err error) {
	if (this._f_isEqPrim) {
		return this.isEqPrim, nil
	}
	this.isEqPrim = bool(this.It == 16705)
	this._f_isEqPrim = true
	return this.isEqPrim, nil
}
func (this *ExprIfIntOps) IsEqBoxed() (v bool, err error) {
	if (this._f_isEqBoxed) {
		return this.isEqBoxed, nil
	}
	this.isEqBoxed = bool(this.It == this.Boxed)
	this._f_isEqBoxed = true
	return this.isEqBoxed, nil
}
