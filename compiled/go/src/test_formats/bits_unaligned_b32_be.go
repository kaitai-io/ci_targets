// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type BitsUnalignedB32Be struct {
	A bool
	B uint64
	C uint64
	_io *kaitai.Stream
	_root *BitsUnalignedB32Be
	_parent interface{}
}
func NewBitsUnalignedB32Be() *BitsUnalignedB32Be {
	return &BitsUnalignedB32Be{
	}
}

func (this *BitsUnalignedB32Be) Read(io *kaitai.Stream, parent interface{}, root *BitsUnalignedB32Be) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBitsIntBe(1)
	if err != nil {
		return err
	}
	this.A = tmp1 != 0
	tmp2, err := this._io.ReadBitsIntBe(32)
	if err != nil {
		return err
	}
	this.B = tmp2
	tmp3, err := this._io.ReadBitsIntBe(7)
	if err != nil {
		return err
	}
	this.C = tmp3
	return err
}
