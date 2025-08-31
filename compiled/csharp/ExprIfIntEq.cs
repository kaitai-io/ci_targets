// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprIfIntEq : KaitaiStruct
    {
        public static ExprIfIntEq FromFile(string fileName)
        {
            return new ExprIfIntEq(new KaitaiStream(fileName));
        }

        public ExprIfIntEq(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprIfIntEq p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_calc = false;
            f_calcEqCalcIf = false;
            f_calcEqLit = false;
            f_calcEqSeqIf = false;
            f_calcIf = false;
            f_calcIfEqLit = false;
            f_calcIfEqSeqIf = false;
            f_seqEqCalc = false;
            f_seqEqCalcIf = false;
            f_seqEqLit = false;
            f_seqEqSeqIf = false;
            f_seqIfEqLit = false;
            _read();
        }
        private void _read()
        {
            _skip = m_io.ReadBytes(2);
            _seq = m_io.ReadS2le();
            if (true) {
                _seqIf = m_io.ReadS2le();
            }
        }
        private bool f_calc;
        private int _calc;
        public int Calc
        {
            get
            {
                if (f_calc)
                    return _calc;
                f_calc = true;
                _calc = (int) (16705);
                return _calc;
            }
        }
        private bool f_calcEqCalcIf;
        private bool _calcEqCalcIf;
        public bool CalcEqCalcIf
        {
            get
            {
                if (f_calcEqCalcIf)
                    return _calcEqCalcIf;
                f_calcEqCalcIf = true;
                _calcEqCalcIf = (bool) (Calc == CalcIf);
                return _calcEqCalcIf;
            }
        }
        private bool f_calcEqLit;
        private bool _calcEqLit;
        public bool CalcEqLit
        {
            get
            {
                if (f_calcEqLit)
                    return _calcEqLit;
                f_calcEqLit = true;
                _calcEqLit = (bool) (Calc == 16705);
                return _calcEqLit;
            }
        }
        private bool f_calcEqSeqIf;
        private bool _calcEqSeqIf;
        public bool CalcEqSeqIf
        {
            get
            {
                if (f_calcEqSeqIf)
                    return _calcEqSeqIf;
                f_calcEqSeqIf = true;
                _calcEqSeqIf = (bool) (Calc == SeqIf);
                return _calcEqSeqIf;
            }
        }
        private bool f_calcIf;
        private int? _calcIf;
        public int? CalcIf
        {
            get
            {
                if (f_calcIf)
                    return _calcIf;
                f_calcIf = true;
                if (true) {
                    _calcIf = (int) (16705);
                }
                return _calcIf;
            }
        }
        private bool f_calcIfEqLit;
        private bool _calcIfEqLit;
        public bool CalcIfEqLit
        {
            get
            {
                if (f_calcIfEqLit)
                    return _calcIfEqLit;
                f_calcIfEqLit = true;
                _calcIfEqLit = (bool) (CalcIf == 16705);
                return _calcIfEqLit;
            }
        }
        private bool f_calcIfEqSeqIf;
        private bool _calcIfEqSeqIf;
        public bool CalcIfEqSeqIf
        {
            get
            {
                if (f_calcIfEqSeqIf)
                    return _calcIfEqSeqIf;
                f_calcIfEqSeqIf = true;
                _calcIfEqSeqIf = (bool) (CalcIf == SeqIf);
                return _calcIfEqSeqIf;
            }
        }
        private bool f_seqEqCalc;
        private bool _seqEqCalc;
        public bool SeqEqCalc
        {
            get
            {
                if (f_seqEqCalc)
                    return _seqEqCalc;
                f_seqEqCalc = true;
                _seqEqCalc = (bool) (Seq == Calc);
                return _seqEqCalc;
            }
        }
        private bool f_seqEqCalcIf;
        private bool _seqEqCalcIf;
        public bool SeqEqCalcIf
        {
            get
            {
                if (f_seqEqCalcIf)
                    return _seqEqCalcIf;
                f_seqEqCalcIf = true;
                _seqEqCalcIf = (bool) (Seq == CalcIf);
                return _seqEqCalcIf;
            }
        }
        private bool f_seqEqLit;
        private bool _seqEqLit;
        public bool SeqEqLit
        {
            get
            {
                if (f_seqEqLit)
                    return _seqEqLit;
                f_seqEqLit = true;
                _seqEqLit = (bool) (Seq == 16705);
                return _seqEqLit;
            }
        }
        private bool f_seqEqSeqIf;
        private bool _seqEqSeqIf;
        public bool SeqEqSeqIf
        {
            get
            {
                if (f_seqEqSeqIf)
                    return _seqEqSeqIf;
                f_seqEqSeqIf = true;
                _seqEqSeqIf = (bool) (Seq == SeqIf);
                return _seqEqSeqIf;
            }
        }
        private bool f_seqIfEqLit;
        private bool _seqIfEqLit;
        public bool SeqIfEqLit
        {
            get
            {
                if (f_seqIfEqLit)
                    return _seqIfEqLit;
                f_seqIfEqLit = true;
                _seqIfEqLit = (bool) (SeqIf == 16705);
                return _seqIfEqLit;
            }
        }
        private byte[] _skip;
        private short _seq;
        private short? _seqIf;
        private ExprIfIntEq m_root;
        private KaitaiStruct m_parent;
        public byte[] Skip { get { return _skip; } }
        public short Seq { get { return _seq; } }
        public short? SeqIf { get { return _seqIf; } }
        public ExprIfIntEq M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
