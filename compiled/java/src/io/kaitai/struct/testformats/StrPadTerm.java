// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.nio.charset.StandardCharsets;

public class StrPadTerm extends KaitaiStruct {
    public static StrPadTerm fromFile(String fileName) throws IOException {
        return new StrPadTerm(new ByteBufferKaitaiStream(fileName));
    }

    public StrPadTerm(KaitaiStream _io) {
        this(_io, null, null);
    }

    public StrPadTerm(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public StrPadTerm(KaitaiStream _io, KaitaiStruct _parent, StrPadTerm _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.strPad = new String(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 64), StandardCharsets.UTF_8);
        this.strTerm = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, false), StandardCharsets.UTF_8);
        this.strTermAndPad = new String(KaitaiStream.bytesTerminate(KaitaiStream.bytesStripRight(this._io.readBytes(20), (byte) 43), (byte) 64, false), StandardCharsets.UTF_8);
        this.strTermInclude = new String(KaitaiStream.bytesTerminate(this._io.readBytes(20), (byte) 64, true), StandardCharsets.UTF_8);
    }
    private String strPad;
    private String strTerm;
    private String strTermAndPad;
    private String strTermInclude;
    private StrPadTerm _root;
    private KaitaiStruct _parent;
    public String strPad() { return strPad; }
    public String strTerm() { return strTerm; }
    public String strTermAndPad() { return strTermAndPad; }
    public String strTermInclude() { return strTermInclude; }
    public StrPadTerm _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
