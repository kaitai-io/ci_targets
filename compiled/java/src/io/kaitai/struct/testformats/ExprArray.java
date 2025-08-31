// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.util.Collections;
import java.util.List;

public class ExprArray extends KaitaiStruct {
    public static ExprArray fromFile(String fileName) throws IOException {
        return new ExprArray(new ByteBufferKaitaiStream(fileName));
    }

    public ExprArray(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprArray(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprArray(KaitaiStream _io, KaitaiStruct _parent, ExprArray _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.aint = new ArrayList<Long>();
        for (int i = 0; i < 4; i++) {
            this.aint.add(this._io.readU4le());
        }
        this.afloat = new ArrayList<Double>();
        for (int i = 0; i < 3; i++) {
            this.afloat.add(this._io.readF8le());
        }
        this.astr = new ArrayList<String>();
        for (int i = 0; i < 3; i++) {
            this.astr.add(new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.UTF_8));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.aint.size(); i++) {
        }
        for (int i = 0; i < this.afloat.size(); i++) {
        }
        for (int i = 0; i < this.astr.size(); i++) {
        }
    }
    private Double afloatFirst;
    public Double afloatFirst() {
        if (this.afloatFirst != null)
            return this.afloatFirst;
        this.afloatFirst = ((Number) (afloat().get(0))).doubleValue();
        return this.afloatFirst;
    }
    private Double afloatLast;
    public Double afloatLast() {
        if (this.afloatLast != null)
            return this.afloatLast;
        this.afloatLast = ((Number) (afloat().get(afloat().size() - 1))).doubleValue();
        return this.afloatLast;
    }
    private Double afloatMax;
    public Double afloatMax() {
        if (this.afloatMax != null)
            return this.afloatMax;
        this.afloatMax = ((Number) (Collections.max(afloat()))).doubleValue();
        return this.afloatMax;
    }
    private Double afloatMin;
    public Double afloatMin() {
        if (this.afloatMin != null)
            return this.afloatMin;
        this.afloatMin = ((Number) (Collections.min(afloat()))).doubleValue();
        return this.afloatMin;
    }
    private Integer afloatSize;
    public Integer afloatSize() {
        if (this.afloatSize != null)
            return this.afloatSize;
        this.afloatSize = ((Number) (afloat().size())).intValue();
        return this.afloatSize;
    }
    private Long aintFirst;
    public Long aintFirst() {
        if (this.aintFirst != null)
            return this.aintFirst;
        this.aintFirst = ((Number) (aint().get(0))).longValue();
        return this.aintFirst;
    }
    private Long aintLast;
    public Long aintLast() {
        if (this.aintLast != null)
            return this.aintLast;
        this.aintLast = ((Number) (aint().get(aint().size() - 1))).longValue();
        return this.aintLast;
    }
    private Long aintMax;
    public Long aintMax() {
        if (this.aintMax != null)
            return this.aintMax;
        this.aintMax = ((Number) (Collections.max(aint()))).longValue();
        return this.aintMax;
    }
    private Long aintMin;
    public Long aintMin() {
        if (this.aintMin != null)
            return this.aintMin;
        this.aintMin = ((Number) (Collections.min(aint()))).longValue();
        return this.aintMin;
    }
    private Integer aintSize;
    public Integer aintSize() {
        if (this.aintSize != null)
            return this.aintSize;
        this.aintSize = ((Number) (aint().size())).intValue();
        return this.aintSize;
    }
    private String astrFirst;
    public String astrFirst() {
        if (this.astrFirst != null)
            return this.astrFirst;
        this.astrFirst = astr().get(0);
        return this.astrFirst;
    }
    private String astrLast;
    public String astrLast() {
        if (this.astrLast != null)
            return this.astrLast;
        this.astrLast = astr().get(astr().size() - 1);
        return this.astrLast;
    }
    private String astrMax;
    public String astrMax() {
        if (this.astrMax != null)
            return this.astrMax;
        this.astrMax = Collections.max(astr());
        return this.astrMax;
    }
    private String astrMin;
    public String astrMin() {
        if (this.astrMin != null)
            return this.astrMin;
        this.astrMin = Collections.min(astr());
        return this.astrMin;
    }
    private Integer astrSize;
    public Integer astrSize() {
        if (this.astrSize != null)
            return this.astrSize;
        this.astrSize = ((Number) (astr().size())).intValue();
        return this.astrSize;
    }
    private List<Long> aint;
    private List<Double> afloat;
    private List<String> astr;
    private ExprArray _root;
    private KaitaiStruct _parent;
    public List<Long> aint() { return aint; }
    public List<Double> afloat() { return afloat; }
    public List<String> astr() { return astr; }
    public ExprArray _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
