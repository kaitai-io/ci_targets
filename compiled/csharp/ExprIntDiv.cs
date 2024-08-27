// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprIntDiv : KaitaiStruct
    {
        public static ExprIntDiv FromFile(string fileName)
        {
            return new ExprIntDiv(new KaitaiStream(fileName));
        }

        public ExprIntDiv(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprIntDiv p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_divNegConst = false;
            f_divNegSeq = false;
            f_divPosConst = false;
            f_divPosSeq = false;
            _read();
        }
        private void _read()
        {
            _intU = m_io.ReadU4le();
            _intS = m_io.ReadS4le();
        }
        private bool f_divNegConst;
        private int _divNegConst;
        public int DivNegConst
        {
            get
            {
                if (f_divNegConst)
                    return _divNegConst;
                f_divNegConst = true;
                _divNegConst = (int) (-9837 / 13);
                return _divNegConst;
            }
        }
        private bool f_divNegSeq;
        private int _divNegSeq;
        public int DivNegSeq
        {
            get
            {
                if (f_divNegSeq)
                    return _divNegSeq;
                f_divNegSeq = true;
                _divNegSeq = (int) (IntS / 13);
                return _divNegSeq;
            }
        }
        private bool f_divPosConst;
        private int _divPosConst;
        public int DivPosConst
        {
            get
            {
                if (f_divPosConst)
                    return _divPosConst;
                f_divPosConst = true;
                _divPosConst = (int) (9837 / 13);
                return _divPosConst;
            }
        }
        private bool f_divPosSeq;
        private int _divPosSeq;
        public int DivPosSeq
        {
            get
            {
                if (f_divPosSeq)
                    return _divPosSeq;
                f_divPosSeq = true;
                _divPosSeq = (int) (IntU / 13);
                return _divPosSeq;
            }
        }
        private uint _intU;
        private int _intS;
        private ExprIntDiv m_root;
        private KaitaiStruct m_parent;
        public uint IntU { get { return _intU; } }
        public int IntS { get { return _intS; } }
        public ExprIntDiv M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
