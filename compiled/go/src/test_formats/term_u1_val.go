// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type TermU1Val struct {
	Foo []byte
	Bar string
	_io *kaitai.Stream
	_root *TermU1Val
	_parent interface{}
}
func NewTermU1Val() *TermU1Val {
	return &TermU1Val{
	}
}

func (this *TermU1Val) Read(io *kaitai.Stream, parent interface{}, root *TermU1Val) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytesTerm(227, false, false, true)
	if err != nil {
		return err
	}
	this.Foo = tmp1
	tmp2, err := this._io.ReadBytesTerm(171, true, true, true)
	if err != nil {
		return err
	}
	this.Bar = string(tmp2)
	return err
}
