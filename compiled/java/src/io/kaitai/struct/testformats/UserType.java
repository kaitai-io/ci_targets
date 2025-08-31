// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;

public class UserType extends KaitaiStruct {
    public static UserType fromFile(String fileName) throws IOException {
        return new UserType(new ByteBufferKaitaiStream(fileName));
    }

    public UserType(KaitaiStream _io) {
        this(_io, null, null);
    }

    public UserType(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public UserType(KaitaiStream _io, KaitaiStruct _parent, UserType _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.one = new Header(this._io, this, _root);
    }

    public void _fetchInstances() {
        this.one._fetchInstances();
    }
    public static class Header extends KaitaiStruct {
        public static Header fromFile(String fileName) throws IOException {
            return new Header(new ByteBufferKaitaiStream(fileName));
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
            _read();
        }
        private void _read() {
            this.width = this._io.readU4le();
            this.height = this._io.readU4le();
        }

        public void _fetchInstances() {
        }
        private long width;
        private long height;
        private UserType _root;
        private UserType _parent;
        public long width() { return width; }
        public long height() { return height; }
        public UserType _root() { return _root; }
        public UserType _parent() { return _parent; }
    }
    private Header one;
    private UserType _root;
    private KaitaiStruct _parent;
    public Header one() { return one; }
    public UserType _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
