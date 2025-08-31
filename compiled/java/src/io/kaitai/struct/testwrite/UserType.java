// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.Objects;
import io.kaitai.struct.ConsistencyError;

public class UserType extends KaitaiStruct.ReadWrite {
    public static UserType fromFile(String fileName) throws IOException {
        return new UserType(new ByteBufferKaitaiStream(fileName));
    }
    public UserType() {
        this(null, null, null);
    }

    public UserType(KaitaiStream _io) {
        this(_io, null, null);
    }

    public UserType(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public UserType(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, UserType _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.one = new Header(this._io, this, _root);
        this.one._read();
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
    }

    public void _write_Seq() {
        this.one._write_Seq(this._io);
    }

    public void _check() {
        if (!Objects.equals(this.one._root(), _root()))
            throw new ConsistencyError("one", this.one._root(), _root());
        if (!Objects.equals(this.one._parent(), this))
            throw new ConsistencyError("one", this.one._parent(), this);
    }
    public static class Header extends KaitaiStruct.ReadWrite {
        public static Header fromFile(String fileName) throws IOException {
            return new Header(new ByteBufferKaitaiStream(fileName));
        }
        public Header() {
            this(null, null, null);
        }

        public Header(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Header(KaitaiStream _io, UserType _parent) {
            this(_io, _parent, null);
        }

        public Header(KaitaiStream _io, UserType _parent, UserType _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.width = this._io.readU4le();
            this.height = this._io.readU4le();
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeU4le(this.width);
            this._io.writeU4le(this.height);
        }

        public void _check() {
        }
        private long width;
        private long height;
        private UserType _root;
        private UserType _parent;
        public long width() { return width; }
        public void setWidth(long _v) { width = _v; }
        public long height() { return height; }
        public void setHeight(long _v) { height = _v; }
        public UserType _root() { return _root; }
        public void set_root(UserType _v) { _root = _v; }
        public UserType _parent() { return _parent; }
        public void set_parent(UserType _v) { _parent = _v; }
    }
    private Header one;
    private UserType _root;
    private KaitaiStruct.ReadWrite _parent;
    public Header one() { return one; }
    public void setOne(Header _v) { one = _v; }
    public UserType _root() { return _root; }
    public void set_root(UserType _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
