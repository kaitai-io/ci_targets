// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type InstanceStdArray struct {
	Ofs uint32
	EntrySize uint32
	QtyEntries uint32
	_io *kaitai.Stream
	_root *InstanceStdArray
	_parent interface{}
	_f_entries bool
	entries [][]byte
}

func (this *InstanceStdArray) Read(io *kaitai.Stream, parent interface{}, root *InstanceStdArray) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Ofs = tmp1
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.EntrySize = tmp2
	tmp3, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.QtyEntries = tmp3
	return err
}
func (this *InstanceStdArray) Entries() (v [][]byte, err error) {
	if (this._f_entries) {
		return this.entries, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64(this.Ofs), io.SeekStart)
	if err != nil {
		return nil, err
	}
	this.entries = make([][]byte, this.QtyEntries)
	for i := range this.entries {
		tmp4, err := this._io.ReadBytes(int(this.EntrySize))
		if err != nil {
			return nil, err
		}
		this.entries[i] = tmp4
	}
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_entries = true
	return this.entries, nil
}
