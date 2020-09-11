// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type ValidFailInst struct {
	A uint8
	_io *kaitai.Stream
	_root *ValidFailInst
	_parent interface{}
	_f_inst bool
	inst uint8
}
func NewValidFailInst() *ValidFailInst {
	return &ValidFailInst{
	}
}

func (this *ValidFailInst) Read(io *kaitai.Stream, parent interface{}, root *ValidFailInst) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this.Inst()
	if err != nil {
		return err
	}
	if (tmp1 >= 0) {
		tmp2, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.A = tmp2
	}
	return err
}
func (this *ValidFailInst) Inst() (v uint8, err error) {
	if (this._f_inst) {
		return this.inst, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return 0, err
	}
	_, err = this._io.Seek(int64(5), io.SeekStart)
	if err != nil {
		return 0, err
	}
	tmp3, err := this._io.ReadU1()
	if err != nil {
		return 0, err
	}
	this.inst = tmp3
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return 0, err
	}
	this._f_inst = true
	tmp4, err := this.Inst()
	if err != nil {
		return 0, err
	}
	tmp5, err := this.Inst()
	if err != nil {
		return 0, err
	}
	if !(tmp5 == 80) {
		return 0, kaitai.NewValidationNotEqualError(80, tmp4, this._io, "/instances/inst")
	}
	this._f_inst = true
	return this.inst, nil
}
