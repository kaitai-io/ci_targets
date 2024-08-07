// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class TermStrzUtf16V4 extends KaitaiStruct {
    public static TermStrzUtf16V4 fromFile(String fileName) throws IOException {
        return new TermStrzUtf16V4(new ByteBufferKaitaiStream(fileName));
    }

    public TermStrzUtf16V4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public TermStrzUtf16V4(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public TermStrzUtf16V4(KaitaiStream _io, KaitaiStruct _parent, TermStrzUtf16V4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_s1 = this._io.substream(6);
        this.s1 = new S1Type(_io_s1, this, _root);
        this.skipTerm1 = this._io.readBytes(2);
        KaitaiStream _io_s2 = this._io.substream(6);
        this.s2 = new S2Type(_io_s2, this, _root);
        this.skipTerm2 = this._io.readBytes(2);
        KaitaiStream _io_s3 = this._io.substream(6);
        this.s3 = new S3Type(_io_s3, this, _root);
    }
    public static class S1Type extends KaitaiStruct {
        public static S1Type fromFile(String fileName) throws IOException {
            return new S1Type(new ByteBufferKaitaiStream(fileName));
        }

        public S1Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S1Type(KaitaiStream _io, TermStrzUtf16V4 _parent) {
            this(_io, _parent, null);
        }

        public S1Type(KaitaiStream _io, TermStrzUtf16V4 _parent, TermStrzUtf16V4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(this._io.readBytesTermMulti(new byte[] { 0, 0 }, false, true, false), StandardCharsets.UTF_16LE);
        }
        private String value;
        private TermStrzUtf16V4 _root;
        private TermStrzUtf16V4 _parent;
        public String value() { return value; }
        public TermStrzUtf16V4 _root() { return _root; }
        public TermStrzUtf16V4 _parent() { return _parent; }
    }
    public static class S2Type extends KaitaiStruct {
        public static S2Type fromFile(String fileName) throws IOException {
            return new S2Type(new ByteBufferKaitaiStream(fileName));
        }

        public S2Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S2Type(KaitaiStream _io, TermStrzUtf16V4 _parent) {
            this(_io, _parent, null);
        }

        public S2Type(KaitaiStream _io, TermStrzUtf16V4 _parent, TermStrzUtf16V4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(this._io.readBytesTermMulti(new byte[] { 0, 0 }, false, false, false), StandardCharsets.UTF_16LE);
        }
        private String value;
        private TermStrzUtf16V4 _root;
        private TermStrzUtf16V4 _parent;
        public String value() { return value; }
        public TermStrzUtf16V4 _root() { return _root; }
        public TermStrzUtf16V4 _parent() { return _parent; }
    }
    public static class S3Type extends KaitaiStruct {
        public static S3Type fromFile(String fileName) throws IOException {
            return new S3Type(new ByteBufferKaitaiStream(fileName));
        }

        public S3Type(KaitaiStream _io) {
            this(_io, null, null);
        }

        public S3Type(KaitaiStream _io, TermStrzUtf16V4 _parent) {
            this(_io, _parent, null);
        }

        public S3Type(KaitaiStream _io, TermStrzUtf16V4 _parent, TermStrzUtf16V4 _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(this._io.readBytesTermMulti(new byte[] { 0, 0 }, true, true, false), StandardCharsets.UTF_16LE);
        }
        private String value;
        private TermStrzUtf16V4 _root;
        private TermStrzUtf16V4 _parent;
        public String value() { return value; }
        public TermStrzUtf16V4 _root() { return _root; }
        public TermStrzUtf16V4 _parent() { return _parent; }
    }
    private S1Type s1;
    private byte[] skipTerm1;
    private S2Type s2;
    private byte[] skipTerm2;
    private S3Type s3;
    private TermStrzUtf16V4 _root;
    private KaitaiStruct _parent;
    public S1Type s1() { return s1; }
    public byte[] skipTerm1() { return skipTerm1; }
    public S2Type s2() { return s2; }
    public byte[] skipTerm2() { return skipTerm2; }
    public S3Type s3() { return s3; }
    public TermStrzUtf16V4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
