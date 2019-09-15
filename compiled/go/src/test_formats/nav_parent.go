// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type NavParent struct {
	Header *NavParent_HeaderObj
	Index *NavParent_IndexObj
	_io *kaitai.Stream
	_root *NavParent
	_parent interface{}
}

func (this *NavParent) Read(io *kaitai.Stream, parent interface{}, root *NavParent) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(NavParent_HeaderObj)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Header = tmp1
	tmp2 := new(NavParent_IndexObj)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Index = tmp2
	return err
}
type NavParent_HeaderObj struct {
	QtyEntries uint32
	FilenameLen uint32
	_io *kaitai.Stream
	_root *NavParent
	_parent *NavParent
}

func (this *NavParent_HeaderObj) Read(io *kaitai.Stream, parent *NavParent, root *NavParent) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.QtyEntries = uint32(tmp3)
	tmp4, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.FilenameLen = uint32(tmp4)
	return err
}
type NavParent_IndexObj struct {
	Magic []byte
	Entries []*NavParent_Entry
	_io *kaitai.Stream
	_root *NavParent
	_parent *NavParent
}

func (this *NavParent_IndexObj) Read(io *kaitai.Stream, parent *NavParent, root *NavParent) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	this.Magic = tmp5
	this.Entries = make([]*NavParent_Entry, this._parent.Header.QtyEntries)
	for i := range this.Entries {
		tmp6 := new(NavParent_Entry)
		err = tmp6.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Entries[i] = tmp6
	}
	return err
}
type NavParent_Entry struct {
	Filename string
	_io *kaitai.Stream
	_root *NavParent
	_parent *NavParent_IndexObj
}

func (this *NavParent_Entry) Read(io *kaitai.Stream, parent *NavParent_IndexObj, root *NavParent) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp7, err := this._io.ReadBytes(int(this._parent._parent.Header.FilenameLen))
	if err != nil {
		return err
	}
	this.Filename = string(tmp7)
	return err
}
