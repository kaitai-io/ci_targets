// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

public class NavParent extends KaitaiStruct.ReadWrite {
    public static NavParent fromFile(String fileName) throws IOException {
        return new NavParent(new ByteBufferKaitaiStream(fileName));
    }
    public NavParent() {
        this(null, null, null);
    }

    public NavParent(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavParent(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavParent(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavParent _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.header = new HeaderObj(this._io, this, _root);
        this.header._read();
        this.index = new IndexObj(this._io, this, _root);
        this.index._read();
        _dirty = false;
    }

    public void _fetchInstances() {
        this.header._fetchInstances();
        this.index._fetchInstances();
    }

    public void _write_Seq() {
        _assertNotDirty();
        this.header._write_Seq(this._io);
        this.index._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.header._root(), _root()))
            throw new ConsistencyError("header", this.header._root(), _root());
        if (!Objects.equals(this.header._parent(), this))
            throw new ConsistencyError("header", this.header._parent(), this);
        if (!Objects.equals(this.index._root(), _root()))
            throw new ConsistencyError("index", this.index._root(), _root());
        if (!Objects.equals(this.index._parent(), this))
            throw new ConsistencyError("index", this.index._parent(), this);
        _dirty = false;
    }
    public static class Entry extends KaitaiStruct.ReadWrite {
        public static Entry fromFile(String fileName) throws IOException {
            return new Entry(new ByteBufferKaitaiStream(fileName));
        }
        public Entry() {
            this(null, null, null);
        }

        public Entry(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Entry(KaitaiStream _io, NavParent.IndexObj _parent) {
            this(_io, _parent, null);
        }

        public Entry(KaitaiStream _io, NavParent.IndexObj _parent, NavParent _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.filename = new String(this._io.readBytes(_parent()._parent().header().filenameLen()), StandardCharsets.UTF_8);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.filename).getBytes(Charset.forName("UTF-8")));
        }

        public void _check() {
            if ((this.filename).getBytes(Charset.forName("UTF-8")).length != _parent()._parent().header().filenameLen())
                throw new ConsistencyError("filename", (this.filename).getBytes(Charset.forName("UTF-8")).length, _parent()._parent().header().filenameLen());
            _dirty = false;
        }
        private String filename;
        private NavParent _root;
        private NavParent.IndexObj _parent;
        public String filename() { return filename; }
        public void setFilename(String _v) { _dirty = true; filename = _v; }
        public NavParent _root() { return _root; }
        public void set_root(NavParent _v) { _dirty = true; _root = _v; }
        public NavParent.IndexObj _parent() { return _parent; }
        public void set_parent(NavParent.IndexObj _v) { _dirty = true; _parent = _v; }
    }
    public static class HeaderObj extends KaitaiStruct.ReadWrite {
        public static HeaderObj fromFile(String fileName) throws IOException {
            return new HeaderObj(new ByteBufferKaitaiStream(fileName));
        }
        public HeaderObj() {
            this(null, null, null);
        }

        public HeaderObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public HeaderObj(KaitaiStream _io, NavParent _parent) {
            this(_io, _parent, null);
        }

        public HeaderObj(KaitaiStream _io, NavParent _parent, NavParent _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.qtyEntries = this._io.readU4le();
            this.filenameLen = this._io.readU4le();
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeU4le(this.qtyEntries);
            this._io.writeU4le(this.filenameLen);
        }

        public void _check() {
            _dirty = false;
        }
        private long qtyEntries;
        private long filenameLen;
        private NavParent _root;
        private NavParent _parent;
        public long qtyEntries() { return qtyEntries; }
        public void setQtyEntries(long _v) { _dirty = true; qtyEntries = _v; }
        public long filenameLen() { return filenameLen; }
        public void setFilenameLen(long _v) { _dirty = true; filenameLen = _v; }
        public NavParent _root() { return _root; }
        public void set_root(NavParent _v) { _dirty = true; _root = _v; }
        public NavParent _parent() { return _parent; }
        public void set_parent(NavParent _v) { _dirty = true; _parent = _v; }
    }
    public static class IndexObj extends KaitaiStruct.ReadWrite {
        public static IndexObj fromFile(String fileName) throws IOException {
            return new IndexObj(new ByteBufferKaitaiStream(fileName));
        }
        public IndexObj() {
            this(null, null, null);
        }

        public IndexObj(KaitaiStream _io) {
            this(_io, null, null);
        }

        public IndexObj(KaitaiStream _io, NavParent _parent) {
            this(_io, _parent, null);
        }

        public IndexObj(KaitaiStream _io, NavParent _parent, NavParent _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.magic = this._io.readBytes(4);
            this.entries = new ArrayList<Entry>();
            for (int i = 0; i < _parent().header().qtyEntries(); i++) {
                Entry _t_entries = new Entry(this._io, this, _root);
                try {
                    _t_entries._read();
                } finally {
                    this.entries.add(_t_entries);
                }
            }
            _dirty = false;
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.entries.size(); i++) {
                this.entries.get(((Number) (i)).intValue())._fetchInstances();
            }
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes(this.magic);
            for (int i = 0; i < this.entries.size(); i++) {
                this.entries.get(((Number) (i)).intValue())._write_Seq(this._io);
            }
        }

        public void _check() {
            if (this.magic.length != 4)
                throw new ConsistencyError("magic", this.magic.length, 4);
            if (this.entries.size() != _parent().header().qtyEntries())
                throw new ConsistencyError("entries", this.entries.size(), _parent().header().qtyEntries());
            for (int i = 0; i < this.entries.size(); i++) {
                if (!Objects.equals(this.entries.get(((Number) (i)).intValue())._root(), _root()))
                    throw new ConsistencyError("entries", this.entries.get(((Number) (i)).intValue())._root(), _root());
                if (!Objects.equals(this.entries.get(((Number) (i)).intValue())._parent(), this))
                    throw new ConsistencyError("entries", this.entries.get(((Number) (i)).intValue())._parent(), this);
            }
            _dirty = false;
        }
        private byte[] magic;
        private List<Entry> entries;
        private NavParent _root;
        private NavParent _parent;
        public byte[] magic() { return magic; }
        public void setMagic(byte[] _v) { _dirty = true; magic = _v; }
        public List<Entry> entries() { return entries; }
        public void setEntries(List<Entry> _v) { _dirty = true; entries = _v; }
        public NavParent _root() { return _root; }
        public void set_root(NavParent _v) { _dirty = true; _root = _v; }
        public NavParent _parent() { return _parent; }
        public void set_parent(NavParent _v) { _dirty = true; _parent = _v; }
    }
    private HeaderObj header;
    private IndexObj index;
    private NavParent _root;
    private KaitaiStruct.ReadWrite _parent;
    public HeaderObj header() { return header; }
    public void setHeader(HeaderObj _v) { _dirty = true; header = _v; }
    public IndexObj index() { return index; }
    public void setIndex(IndexObj _v) { _dirty = true; index = _v; }
    public NavParent _root() { return _root; }
    public void set_root(NavParent _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
