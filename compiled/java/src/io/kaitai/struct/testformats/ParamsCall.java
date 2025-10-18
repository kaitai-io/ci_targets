// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class ParamsCall extends KaitaiStruct {
    public static ParamsCall fromFile(String fileName) throws IOException {
        return new ParamsCall(new ByteBufferKaitaiStream(fileName));
    }

    public ParamsCall(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ParamsCall(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ParamsCall(KaitaiStream _io, KaitaiStruct _parent, ParamsCall _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.buf1 = new MyStr1(this._io, this, _root, 5);
        this.buf2 = new MyStr2(this._io, this, _root, 2 + 3, true);
    }

    public void _fetchInstances() {
        this.buf1._fetchInstances();
        this.buf2._fetchInstances();
    }
    public static class MyStr1 extends KaitaiStruct {

        public MyStr1(KaitaiStream _io, long len) {
            this(_io, null, null, len);
        }

        public MyStr1(KaitaiStream _io, ParamsCall _parent, long len) {
            this(_io, _parent, null, len);
        }

        public MyStr1(KaitaiStream _io, ParamsCall _parent, ParamsCall _root, long len) {
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
        public ParamsCall _root() { return _root; }
        public ParamsCall _parent() { return _parent; }
        private String body;
        private long len;
        private ParamsCall _root;
        private ParamsCall _parent;
    }
    public static class MyStr2 extends KaitaiStruct {

        public MyStr2(KaitaiStream _io, long len, boolean hasTrailer) {
            this(_io, null, null, len, hasTrailer);
        }

        public MyStr2(KaitaiStream _io, ParamsCall _parent, long len, boolean hasTrailer) {
            this(_io, _parent, null, len, hasTrailer);
        }

        public MyStr2(KaitaiStream _io, ParamsCall _parent, ParamsCall _root, long len, boolean hasTrailer) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.len = len;
            this.hasTrailer = hasTrailer;
            _read();
        }
        private void _read() {
            this.body = new String(this._io.readBytes(len()), StandardCharsets.UTF_8);
            if (hasTrailer()) {
                this.trailer = this._io.readU1();
            }
        }

        public void _fetchInstances() {
            if (hasTrailer()) {
            }
        }
        public String body() { return body; }
        public Integer trailer() { return trailer; }
        public long len() { return len; }
        public boolean hasTrailer() { return hasTrailer; }
        public ParamsCall _root() { return _root; }
        public ParamsCall _parent() { return _parent; }
        private String body;
        private Integer trailer;
        private long len;
        private boolean hasTrailer;
        private ParamsCall _root;
        private ParamsCall _parent;
    }
    public MyStr1 buf1() { return buf1; }
    public MyStr2 buf2() { return buf2; }
    public ParamsCall _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private MyStr1 buf1;
    private MyStr2 buf2;
    private ParamsCall _root;
    private KaitaiStruct _parent;
}
