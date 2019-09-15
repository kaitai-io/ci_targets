// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"io"
)

type NavParent3 struct {
	OfsTags uint32
	NumTags uint32
	_io *kaitai.Stream
	_root *NavParent3
	_parent interface{}
	_f_tags bool
	tags []*NavParent3_Tag
}

func (this *NavParent3) Read(io *kaitai.Stream, parent interface{}, root *NavParent3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.OfsTags = uint32(tmp1)
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.NumTags = uint32(tmp2)
	return err
}
func (this *NavParent3) Tags() (v []*NavParent3_Tag, err error) {
	if (this._f_tags) {
		return this.tags, nil
	}
	_pos, err := this._io.Pos()
	if err != nil {
		return nil, err
	}
	_, err = this._io.Seek(int64(this.OfsTags), io.SeekStart)
	if err != nil {
		return nil, err
	}
	this.tags = make([]*NavParent3_Tag, this.NumTags)
	for i := range this.tags {
		tmp3 := new(NavParent3_Tag)
		err = tmp3.Read(this._io, this, this._root)
		if err != nil {
			return nil, err
		}
		this.tags[i] = tmp3
	}
	_, err = this._io.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_tags = true
	return this.tags, nil
}
type NavParent3_Tag struct {
	Name string
	Ofs uint32
	NumItems uint32
	_io *kaitai.Stream
	_root *NavParent3
	_parent *NavParent3
	_f_tagContent bool
	tagContent *NavParent3_Tag_TagChar
}

func (this *NavParent3_Tag) Read(io *kaitai.Stream, parent *NavParent3, root *NavParent3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadBytes(int(4))
	if err != nil {
		return err
	}
	this.Name = string(tmp4)
	tmp5, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Ofs = uint32(tmp5)
	tmp6, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.NumItems = uint32(tmp6)
	return err
}
func (this *NavParent3_Tag) TagContent() (v *NavParent3_Tag_TagChar, err error) {
	if (this._f_tagContent) {
		return this.tagContent, nil
	}
	thisIo := this._root._io
	_pos, err := thisIo.Pos()
	if err != nil {
		return nil, err
	}
	_, err = thisIo.Seek(int64(this.Ofs), io.SeekStart)
	if err != nil {
		return nil, err
	}
	switch (this.Name) {
	case "RAHC":
		tmp7 := new(NavParent3_Tag_TagChar)
		err = tmp7.Read(thisIo, this, this._root)
		if err != nil {
			return nil, err
		}
		this.tagContent = tmp7
	}
	_, err = thisIo.Seek(_pos, io.SeekStart)
	if err != nil {
		return nil, err
	}
	this._f_tagContent = true
	return this.tagContent, nil
}
type NavParent3_Tag_TagChar struct {
	Content string
	_io *kaitai.Stream
	_root *NavParent3
	_parent *NavParent3_Tag
}

func (this *NavParent3_Tag_TagChar) Read(io *kaitai.Stream, parent *NavParent3_Tag, root *NavParent3) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp8, err := this._io.ReadBytes(int(this._parent.NumItems))
	if err != nil {
		return err
	}
	this.Content = string(tmp8)
	return err
}
