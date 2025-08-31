// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class StrPadTermUtf16 extends KaitaiStruct {
    public static StrPadTermUtf16 fromFile(String fileName) throws IOException {
        return new StrPadTermUtf16(new ByteBufferKaitaiStream(fileName));
    }

    public StrPadTermUtf16(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrPadTermUtf16(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrPadTermUtf16(KaitaiStream _io, KaitaiStruct _parent, StrPadTermUtf16 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.strTerm = new String(KaitaiStream.bytesTerminateMulti(this._io.readBytes(10), new byte[] { 0, 0 }, false), StandardCharsets.UTF_16LE);
        this.strTermInclude = new String(KaitaiStream.bytesTerminateMulti(this._io.readBytes(10), new byte[] { 0, 0 }, true), StandardCharsets.UTF_16LE);
        this.strTermAndPad = new String(KaitaiStream.bytesTerminateMulti(KaitaiStream.bytesStripRight(this._io.readBytes(9), (byte) 43), new byte[] { 0, 0 }, false), StandardCharsets.UTF_16LE);
    }

    public void _fetchInstances() {
    }
    private String strTerm;
    private String strTermInclude;
    private String strTermAndPad;
    private StrPadTermUtf16 _root;
    private KaitaiStruct _parent;
    public String strTerm() { return strTerm; }
    public String strTermInclude() { return strTermInclude; }
    public String strTermAndPad() { return strTermAndPad; }
    public StrPadTermUtf16 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
