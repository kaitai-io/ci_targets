// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
type EofExceptionBytes struct {
	Buf byte[]
	_io *kaitai.Stream
	_root *EofExceptionBytes
	_parent interface{}
}

func (this *EofExceptionBytes) Read(io *kaitai.Stream, parent interface{}, root *EofExceptionBytes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(13))
	if err != nil {
		return err
	}
	this.Buf = tmp1
	return err
}
