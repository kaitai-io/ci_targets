// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class StrEosPadTermEmpty extends KaitaiStruct {
    public static StrEosPadTermEmpty fromFile(String fileName) throws IOException {
        return new StrEosPadTermEmpty(new ByteBufferKaitaiStream(fileName));
    }

    public StrEosPadTermEmpty(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrEosPadTermEmpty(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrEosPadTermEmpty(KaitaiStream _io, KaitaiStruct _parent, StrEosPadTermEmpty _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        KaitaiStream _io_strPad = this._io.substream(20);
        this.strPad = new StrPadType(_io_strPad, this, _root);
        KaitaiStream _io_strTerm = this._io.substream(20);
        this.strTerm = new StrTermType(_io_strTerm, this, _root);
        KaitaiStream _io_strTermAndPad = this._io.substream(20);
        this.strTermAndPad = new StrTermAndPadType(_io_strTermAndPad, this, _root);
        KaitaiStream _io_strTermInclude = this._io.substream(20);
        this.strTermInclude = new StrTermIncludeType(_io_strTermInclude, this, _root);
    }

    public void _fetchInstances() {
        this.strPad._fetchInstances();
        this.strTerm._fetchInstances();
        this.strTermAndPad._fetchInstances();
        this.strTermInclude._fetchInstances();
    }
    public static class StrPadType extends KaitaiStruct {
        public static StrPadType fromFile(String fileName) throws IOException {
            return new StrPadType(new ByteBufferKaitaiStream(fileName));
        }

        public StrPadType(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrPadType(KaitaiStream _io, StrEosPadTermEmpty _parent) {
            this(_io, _parent, null);
        }

        public StrPadType(KaitaiStream _io, StrEosPadTermEmpty _parent, StrEosPadTermEmpty _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(KaitaiStream.bytesStripRight(this._io.readBytesFull(), (byte) 64), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public StrEosPadTermEmpty _root() { return _root; }
        public StrEosPadTermEmpty _parent() { return _parent; }
        private String value;
        private StrEosPadTermEmpty _root;
        private StrEosPadTermEmpty _parent;
    }
    public static class StrTermAndPadType extends KaitaiStruct {
        public static StrTermAndPadType fromFile(String fileName) throws IOException {
            return new StrTermAndPadType(new ByteBufferKaitaiStream(fileName));
        }

        public StrTermAndPadType(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrTermAndPadType(KaitaiStream _io, StrEosPadTermEmpty _parent) {
            this(_io, _parent, null);
        }

        public StrTermAndPadType(KaitaiStream _io, StrEosPadTermEmpty _parent, StrEosPadTermEmpty _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytesFull(), (byte) 43), (byte) 64, false), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public StrEosPadTermEmpty _root() { return _root; }
        public StrEosPadTermEmpty _parent() { return _parent; }
        private String value;
        private StrEosPadTermEmpty _root;
        private StrEosPadTermEmpty _parent;
    }
    public static class StrTermIncludeType extends KaitaiStruct {
        public static StrTermIncludeType fromFile(String fileName) throws IOException {
            return new StrTermIncludeType(new ByteBufferKaitaiStream(fileName));
        }

        public StrTermIncludeType(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrTermIncludeType(KaitaiStream _io, StrEosPadTermEmpty _parent) {
            this(_io, _parent, null);
        }

        public StrTermIncludeType(KaitaiStream _io, StrEosPadTermEmpty _parent, StrEosPadTermEmpty _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 64, true), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public StrEosPadTermEmpty _root() { return _root; }
        public StrEosPadTermEmpty _parent() { return _parent; }
        private String value;
        private StrEosPadTermEmpty _root;
        private StrEosPadTermEmpty _parent;
    }
    public static class StrTermType extends KaitaiStruct {
        public static StrTermType fromFile(String fileName) throws IOException {
            return new StrTermType(new ByteBufferKaitaiStream(fileName));
        }

        public StrTermType(KaitaiStream _io) {
            this(_io, null, null);
        }

        public StrTermType(KaitaiStream _io, StrEosPadTermEmpty _parent) {
            this(_io, _parent, null);
        }

        public StrTermType(KaitaiStream _io, StrEosPadTermEmpty _parent, StrEosPadTermEmpty _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            _read();
        }
        private void _read() {
            this.value = new String(KaitaiStream.bytesTerminate(this._io.readBytesFull(), (byte) 64, false), StandardCharsets.UTF_8);
        }

        public void _fetchInstances() {
        }
        public String value() { return value; }
        public StrEosPadTermEmpty _root() { return _root; }
        public StrEosPadTermEmpty _parent() { return _parent; }
        private String value;
        private StrEosPadTermEmpty _root;
        private StrEosPadTermEmpty _parent;
    }
    public StrPadType strPad() { return strPad; }
    public StrTermType strTerm() { return strTerm; }
    public StrTermAndPadType strTermAndPad() { return strTermAndPad; }
    public StrTermIncludeType strTermInclude() { return strTermInclude; }
    public StrEosPadTermEmpty _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    private StrPadType strPad;
    private StrTermType strTerm;
    private StrTermAndPadType strTermAndPad;
    private StrTermIncludeType strTermInclude;
    private StrEosPadTermEmpty _root;
    private KaitaiStruct _parent;
}
