// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class RepeatEosU4 extends KaitaiStruct {
    public static RepeatEosU4 fromFile(String fileName) throws IOException {
        return new RepeatEosU4(new ByteBufferKaitaiStream(fileName));
    }

    public RepeatEosU4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatEosU4(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public RepeatEosU4(KaitaiStream _io, KaitaiStruct _parent, RepeatEosU4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.numbers = new ArrayList<Long>();
        {
            int i = 0;
            while (!this._io.isEof()) {
                this.numbers.add(this._io.readU4le());
                i++;
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.numbers.size(); i++) {
        }
    }
    private List<Long> numbers;
    private RepeatEosU4 _root;
    private KaitaiStruct _parent;
    public List<Long> numbers() { return numbers; }
    public RepeatEosU4 _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
