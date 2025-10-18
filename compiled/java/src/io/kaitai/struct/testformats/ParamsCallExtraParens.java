// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ParamsCallExtraParens extends KaitaiStruct {
    public static ParamsCallExtraParens fromFile(String fileName) throws IOException {
        return new ParamsCallExtraParens(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsCallExtraParens(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsCallExtraParens(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsCallExtraParens(KaitaiStream _io, KaitaiStruct _parent, ParamsCallExtraParens _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.buf1 = new MyStr1(this._io, this, _root, 5);
    }

    public void _fetchInstances() {
        this.buf1._fetchInstances();
    }
    public static class MyStr1 extends KaitaiStruct {

        public MyStr1(KaitaiStream _io, long len) {
            this(_io, null, null, len);
        }

        public MyStr1(KaitaiStream _io, ParamsCallExtraParens _parent, long len) {
            this(_io, _parent, null, len);
        }

        public MyStr1(KaitaiStream _io, ParamsCallExtraParens _parent, ParamsCallExtraParens _root, long len) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.len = len;
            _read();
        }
        private void _read() {
            this.body = new String(this._io.readBytes(len()), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String body() { return body; }
        public long len() { return len; }
        public ParamsCallExtraParens _root() { return _root; }
        public ParamsCallExtraParens _parent() { return _parent; }
        private String body;
        private long len;
        private ParamsCallExtraParens _root;
        private ParamsCallExtraParens _parent;
    }
    public MyStr1 buf1() { return buf1; }
    public ParamsCallExtraParens _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private MyStr1 buf1;
    private ParamsCallExtraParens _root;
    private KaitaiStruct _parent;
}
