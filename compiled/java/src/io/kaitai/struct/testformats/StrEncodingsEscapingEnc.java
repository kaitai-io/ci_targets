// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.Charset;

public class StrEncodingsEscapingEnc extends KaitaiStruct {
    public static StrEncodingsEscapingEnc fromFile(String fileName) throws IOException {
        return new StrEncodingsEscapingEnc(new ByteBufferKaitaiStream(fileName));
    }

    public StrEncodingsEscapingEnc(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEncodingsEscapingEnc(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrEncodingsEscapingEnc(KaitaiStream _io, KaitaiStruct _parent, StrEncodingsEscapingEnc _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.lenOf1 = this._io.readU2le();
        KaitaiStream _io_str1 = this._io.substream(lenOf1());
        this.str1 = new Str1Wrapper(_io_str1, this, _root);
        this.lenOf2 = this._io.readU2le();
        KaitaiStream _io_str2 = this._io.substream(lenOf2());
        this.str2 = new Str2Wrapper(_io_str2, this, _root);
        this.lenOf3 = this._io.readU2le();
        KaitaiStream _io_str3 = this._io.substream(lenOf3());
        this.str3 = new Str3Wrapper(_io_str3, this, _root);
        this.lenOf4 = this._io.readU2le();
        KaitaiStream _io_str4 = this._io.substream(lenOf4());
        this.str4 = new Str4Wrapper(_io_str4, this, _root);
    }

    public void _fetchInstances() {
        this.str1._fetchInstances();
        this.str2._fetchInstances();
        this.str3._fetchInstances();
        this.str4._fetchInstances();
    }
    public static class Str1Wrapper extends KaitaiStruct {
        public static Str1Wrapper fromFile(String fileName) throws IOException {
            return new Str1Wrapper(new ByteBufferKaitaiStream(fileName));
        }

        public Str1Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Str1Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent) {
            this(_io, _parent, null);
        }

        public Str1Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent, StrEncodingsEscapingEnc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
            v();
        }
        private String v;
        public String v() {
            if (this.v != null)
                return this.v;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.v = new String(this._io.readBytesFull(), Charset.forName("ASCII\\\\x"));
            this._io.seek(_pos);
            return this.v;
        }
        private StrEncodingsEscapingEnc _root;
        private StrEncodingsEscapingEnc _parent;
        public StrEncodingsEscapingEnc _root() { return _root; }
        public StrEncodingsEscapingEnc _parent() { return _parent; }
    }
    public static class Str2Wrapper extends KaitaiStruct {
        public static Str2Wrapper fromFile(String fileName) throws IOException {
            return new Str2Wrapper(new ByteBufferKaitaiStream(fileName));
        }

        public Str2Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Str2Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent) {
            this(_io, _parent, null);
        }

        public Str2Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent, StrEncodingsEscapingEnc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
            v();
        }
        private String v;
        public String v() {
            if (this.v != null)
                return this.v;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.v = new String(this._io.readBytesFull(), Charset.forName("UTF-8\\'x"));
            this._io.seek(_pos);
            return this.v;
        }
        private StrEncodingsEscapingEnc _root;
        private StrEncodingsEscapingEnc _parent;
        public StrEncodingsEscapingEnc _root() { return _root; }
        public StrEncodingsEscapingEnc _parent() { return _parent; }
    }
    public static class Str3Wrapper extends KaitaiStruct {
        public static Str3Wrapper fromFile(String fileName) throws IOException {
            return new Str3Wrapper(new ByteBufferKaitaiStream(fileName));
        }

        public Str3Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Str3Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent) {
            this(_io, _parent, null);
        }

        public Str3Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent, StrEncodingsEscapingEnc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
            v();
        }
        private String v;
        public String v() {
            if (this.v != null)
                return this.v;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.v = new String(this._io.readBytesFull(), Charset.forName("SJIS\\\"x"));
            this._io.seek(_pos);
            return this.v;
        }
        private StrEncodingsEscapingEnc _root;
        private StrEncodingsEscapingEnc _parent;
        public StrEncodingsEscapingEnc _root() { return _root; }
        public StrEncodingsEscapingEnc _parent() { return _parent; }
    }
    public static class Str4Wrapper extends KaitaiStruct {
        public static Str4Wrapper fromFile(String fileName) throws IOException {
            return new Str4Wrapper(new ByteBufferKaitaiStream(fileName));
        }

        public Str4Wrapper(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Str4Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent) {
            this(_io, _parent, null);
        }

        public Str4Wrapper(KaitaiStream _io, StrEncodingsEscapingEnc _parent, StrEncodingsEscapingEnc _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
        }

        public void _fetchInstances() {
            v();
        }
        private String v;
        public String v() {
            if (this.v != null)
                return this.v;
            long _pos = this._io.pos();
            this._io.seek(0);
            this.v = new String(this._io.readBytesFull(), Charset.forName("IBM437\\nx"));
            this._io.seek(_pos);
            return this.v;
        }
        private StrEncodingsEscapingEnc _root;
        private StrEncodingsEscapingEnc _parent;
        public StrEncodingsEscapingEnc _root() { return _root; }
        public StrEncodingsEscapingEnc _parent() { return _parent; }
    }
    private int lenOf1;
    private Str1Wrapper str1;
    private int lenOf2;
    private Str2Wrapper str2;
    private int lenOf3;
    private Str3Wrapper str3;
    private int lenOf4;
    private Str4Wrapper str4;
    private StrEncodingsEscapingEnc _root;
    private KaitaiStruct _parent;
    public int lenOf1() { return lenOf1; }
    public Str1Wrapper str1() { return str1; }
    public int lenOf2() { return lenOf2; }
    public Str2Wrapper str2() { return str2; }
    public int lenOf3() { return lenOf3; }
    public Str3Wrapper str3() { return str3; }
    public int lenOf4() { return lenOf4; }
    public Str4Wrapper str4() { return str4; }
    public StrEncodingsEscapingEnc _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
