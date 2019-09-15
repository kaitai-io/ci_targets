// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ProcessRotate struct {
	Buf1 []byte
	Buf2 []byte
	Key uint8
	Buf3 []byte
	_io *kaitai.Stream
	_root *ProcessRotate
	_parent interface{}
	_raw_Buf1 []byte
	_raw_Buf2 []byte
	_raw_Buf3 []byte
}

func (this *ProcessRotate) Read(io *kaitai.Stream, parent interface{}, root *ProcessRotate) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	this._raw_Buf1 = tmp1
	this.Buf1 = kaitai.ProcessRotateLeft(this._raw_Buf1, int(3))
	tmp2, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	this._raw_Buf2 = tmp2
	this.Buf2 = kaitai.ProcessRotateLeft(this._raw_Buf2, int(8 - (3)))
	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Key = tmp3
	tmp4, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	this._raw_Buf3 = tmp4
	this.Buf3 = kaitai.ProcessRotateLeft(this._raw_Buf3, int(this.Key))
	return err
}
