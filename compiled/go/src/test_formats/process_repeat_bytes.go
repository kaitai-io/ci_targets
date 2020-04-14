// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ProcessRepeatBytes struct {
	Bufs [][]byte
	_io *kaitai.Stream
	_root *ProcessRepeatBytes
	_parent interface{}
	_raw_Bufs [][]byte
}
func NewProcessRepeatBytes() *ProcessRepeatBytes {
	return &ProcessRepeatBytes{
	}
}

func (this *ProcessRepeatBytes) Read(io *kaitai.Stream, parent interface{}, root *ProcessRepeatBytes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this._raw_Bufs = make([][]byte, 2)
	this.Bufs = make([][]byte, 2)
	for i := range this.Bufs {
		tmp1, err := this._io.ReadBytes(int(5))
		if err != nil {
			return err
		}
		tmp1 = tmp1
		this._raw_Bufs[i] = tmp1
		this.Bufs[i] = kaitai.ProcessXOR(this._raw_Bufs[i], []byte{158})
	}
	return err
}
