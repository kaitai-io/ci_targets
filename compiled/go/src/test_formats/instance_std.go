// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type InstanceStd struct {
	_io *kaitai.Stream
	_root *InstanceStd
	_parent interface{}
	_f_header bool
	header string
}

func (this *InstanceStd) Read(io *kaitai.Stream, parent interface{}, root *InstanceStd) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *InstanceStd) Header() (v string, err error) {
	if (this._f_header) {
		return this.header, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return "", err
	}
	_, err = this._io.Seek(int64(2), io.SeekStart)
	if err != nil {
		return "", err
	}
	tmp1, err := this._io.ReadBytes(int(5))
	if err != nil {
		return "", err
	}
	tmp1 = tmp1
	this.header = string(tmp1)
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return "", err
	}
	this._f_header = true
	this._f_header = true
	return this.header, nil
}
