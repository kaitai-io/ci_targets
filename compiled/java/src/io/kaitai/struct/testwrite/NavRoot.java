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

public class NavRoot extends KaitaiStruct.ReadWrite {
    public static NavRoot fromFile(String fileName) throws IOException {
        return new NavRoot(new ByteBufferKaitaiStream(fileName));
    }
    public NavRoot() {
        this(null, null, null);
    }

    public NavRoot(KaitaiStream _io) {
        this(_io, null, null);
    }

    public NavRoot(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public NavRoot(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, NavRoot _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.header = new HeaderObj(this._io, this, _root);
        this.header._read();
        this.index = new IndexObj(this._io, this, _root);
        this.index._read();
    }

    public void _fetchInstances() {
        this.header._fetchInstances();
        this.index._fetchInstances();
    }

    public void _write_Seq() {
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

        public Entry(KaitaiStream _io, NavRoot.IndexObj _parent) {
            this(_io, _parent, null);
        }

        public Entry(KaitaiStream _io, NavRoot.IndexObj _parent, NavRoot _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.filename = new String(this._io.readBytes(_root().header().filenameLen()), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes((this.filename).getBytes(Charset.forName("UTF-8")));
        }

        public void _check() {
            if ((this.filename).getBytes(Charset.forName("UTF-8")).length != _root().header().filenameLen())
                throw new ConsistencyError("filename", (this.filename).getBytes(Charset.forName("UTF-8")).length, _root().header().filenameLen());
        }
        private String filename;
        private NavRoot _root;
        private NavRoot.IndexObj _parent;
        public String filename() { return filename; }
        public void setFilename(String _v) { filename = _v; }
        public NavRoot _root() { return _root; }
        public void set_root(NavRoot _v) { _root = _v; }
        public NavRoot.IndexObj _parent() { return _parent; }
        public void set_parent(NavRoot.IndexObj _v) { _parent = _v; }
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

        public HeaderObj(KaitaiStream _io, NavRoot _parent) {
            this(_io, _parent, null);
        }

        public HeaderObj(KaitaiStream _io, NavRoot _parent, NavRoot _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.qtyEntries = this._io.readU4le();
            this.filenameLen = this._io.readU4le();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU4le(this.qtyEntries);
            this._io.writeU4le(this.filenameLen);
        }

        public void _check() {
        }
        private long qtyEntries;
        private long filenameLen;
        private NavRoot _root;
        private NavRoot _parent;
        public long qtyEntries() { return qtyEntries; }
        public void setQtyEntries(long _v) { qtyEntries = _v; }
        public long filenameLen() { return filenameLen; }
        public void setFilenameLen(long _v) { filenameLen = _v; }
        public NavRoot _root() { return _root; }
        public void set_root(NavRoot _v) { _root = _v; }
        public NavRoot _parent() { return _parent; }
        public void set_parent(NavRoot _v) { _parent = _v; }
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

        public IndexObj(KaitaiStream _io, NavRoot _parent) {
            this(_io, _parent, null);
        }

        public IndexObj(KaitaiStream _io, NavRoot _parent, NavRoot _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.magic = this._io.readBytes(4);
            this.entries = new ArrayList<Entry>();
            for (int i = 0; i < _root().header().qtyEntries(); i++) {
                Entry _t_entries = new Entry(this._io, this, _root);
                try {
                    _t_entries._read();
                } finally {
                    this.entries.add(_t_entries);
                }
            }
        }

        public void _fetchInstances() {
            for (int i = 0; i < this.entries.size(); i++) {
                this.entries.get(((Number) (i)).intValue())._fetchInstances();
            }
        }

        public void _write_Seq() {
            this._io.writeBytes(this.magic);
            for (int i = 0; i < this.entries.size(); i++) {
                this.entries.get(((Number) (i)).intValue())._write_Seq(this._io);
            }
        }

        public void _check() {
            if (this.magic.length != 4)
                throw new ConsistencyError("magic", this.magic.length, 4);
            if (this.entries.size() != _root().header().qtyEntries())
                throw new ConsistencyError("entries", this.entries.size(), _root().header().qtyEntries());
            for (int i = 0; i < this.entries.size(); i++) {
                if (!Objects.equals(this.entries.get(((Number) (i)).intValue())._root(), _root()))
                    throw new ConsistencyError("entries", this.entries.get(((Number) (i)).intValue())._root(), _root());
                if (!Objects.equals(this.entries.get(((Number) (i)).intValue())._parent(), this))
                    throw new ConsistencyError("entries", this.entries.get(((Number) (i)).intValue())._parent(), this);
            }
        }
        private byte[] magic;
        private List<Entry> entries;
        private NavRoot _root;
        private NavRoot _parent;
        public byte[] magic() { return magic; }
        public void setMagic(byte[] _v) { magic = _v; }
        public List<Entry> entries() { return entries; }
        public void setEntries(List<Entry> _v) { entries = _v; }
        public NavRoot _root() { return _root; }
        public void set_root(NavRoot _v) { _root = _v; }
        public NavRoot _parent() { return _parent; }
        public void set_parent(NavRoot _v) { _parent = _v; }
    }
    private HeaderObj header;
    private IndexObj index;
    private NavRoot _root;
    private KaitaiStruct.ReadWrite _parent;
    public HeaderObj header() { return header; }
    public void setHeader(HeaderObj _v) { header = _v; }
    public IndexObj index() { return index; }
    public void setIndex(IndexObj _v) { index = _v; }
    public NavRoot _root() { return _root; }
    public void set_root(NavRoot _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
