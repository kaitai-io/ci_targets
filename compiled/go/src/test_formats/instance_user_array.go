// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
	"bytes"
)

type InstanceUserArray struct {
	Ofs uint32
	EntrySize uint32
	QtyEntries uint32
	_io *kaitai.Stream
	_root *InstanceUserArray
	_parent interface{}
	_f_userEntries bool
	userEntries []*InstanceUserArray_Entry
}

func (this *InstanceUserArray) Read(io *kaitai.Stream, parent interface{}, root *InstanceUserArray) (err error) {
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
func (this *InstanceUserArray) UserEntries() (v []*InstanceUserArray_Entry, err error) {
	if (this._f_userEntries) {
		return this.userEntries, nil
	}
	if (this.Ofs > 0) {
		_pos, err := this._io.Pos()
		if err != nil {
			return nil, err
		}
		_, err = this._io.Seek(int64(this.Ofs), io.SeekStart)
		if err != nil {
			return nil, err
		}
		this._raw_userEntries = new ArrayList<byte[]>((int) (this.QtyEntries));
		this.userEntries = make([]*InstanceUserArray_Entry, this.QtyEntries)
		for i := range this.userEntries {
			tmp4, err := this._io.ReadBytes(int(this.EntrySize))
			if err != nil {
				return nil, err
			}
			this._raw_userEntries[i] = tmp4
			_io__raw_userEntries := kaitai.NewStream(bytes.NewReader(this._raw_userEntries.get(this._raw_userEntries.size() - 1)))
			tmp5 := new(InstanceUserArray_Entry)
			err = tmp5.Read(_io__raw_userEntries, this, this._root)
			if err != nil {
				return nil, err
			}
			this.userEntries[i] = tmp5
		}
		_, err = this._io.Seek(_pos, io.SeekStart)
		if err != nil {
			return nil, err
		}
	}
	this._f_userEntries = true
	return this.userEntries, nil
}
type InstanceUserArray_Entry struct {
	Word1 uint16
	Word2 uint16
	_io *kaitai.Stream
	_root *InstanceUserArray
	_parent *InstanceUserArray
}

func (this *InstanceUserArray_Entry) Read(io *kaitai.Stream, parent *InstanceUserArray, root *InstanceUserArray) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp6, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Word1 = tmp6
	tmp7, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Word2 = tmp7
	return err
}
