// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type ValidFailContentsInst struct {
	A []byte
	_io *kaitai.Stream
	_root *ValidFailContentsInst
	_parent kaitai.Struct
	_f_foo bool
	foo []byte
}
func NewValidFailContentsInst() *ValidFailContentsInst {
	return &ValidFailContentsInst{
	}
}

func (this ValidFailContentsInst) IO_() *kaitai.Stream {
	return this._io
}

func (this *ValidFailContentsInst) Read(io *kaitai.Stream, parent kaitai.Struct, root *ValidFailContentsInst) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this.Foo()
	if err != nil {
		return err
	}
	if (len(tmp1) == 0) {
		tmp2, err := this._io.ReadBytes(int(0))
		if err != nil {
			return err
		}
		tmp2 = tmp2
		this.A = tmp2
	}
	return err
}
func (this *ValidFailContentsInst) Foo() (v []byte, err error) {
	if (this._f_foo) {
		return this.foo, nil
	}
	this._f_foo = true
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64(0), io.SeekStart)
	if err != nil {
		return nil, err
	}
	tmp3, err := this._io.ReadBytes(int(2))
	if err != nil {
		return nil, err
	}
	tmp3 = tmp3
	this.foo = tmp3
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	return this.foo, nil
}
