// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprMod : KaitaiStruct
    {
        public static ExprMod FromFile(string fileName)
        {
            return new ExprMod(new KaitaiStream(fileName));
        }

        public ExprMod(KaitaiStream p__io, KaitaiStruct p__parent = null, ExprMod p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_modNegConst = false;
            f_modNegSeq = false;
            f_modPosConst = false;
            f_modPosSeq = false;
            _read();
        }
        private void _read()
        {
            _intU = m_io.ReadU4le();
            _intS = m_io.ReadS4le();
        }
        private bool f_modNegConst;
        private int _modNegConst;
        public int ModNegConst
        {
            get
            {
                if (f_modNegConst)
                    return _modNegConst;
                f_modNegConst = true;
                _modNegConst = (int) (KaitaiStream.Mod(-9837, 13));
                return _modNegConst;
            }
        }
        private bool f_modNegSeq;
        private int _modNegSeq;
        public int ModNegSeq
        {
            get
            {
                if (f_modNegSeq)
                    return _modNegSeq;
                f_modNegSeq = true;
                _modNegSeq = (int) (KaitaiStream.Mod(IntS, 13));
                return _modNegSeq;
            }
        }
        private bool f_modPosConst;
        private int _modPosConst;
        public int ModPosConst
        {
            get
            {
                if (f_modPosConst)
                    return _modPosConst;
                f_modPosConst = true;
                _modPosConst = (int) (KaitaiStream.Mod(9837, 13));
                return _modPosConst;
            }
        }
        private bool f_modPosSeq;
        private int _modPosSeq;
        public int ModPosSeq
        {
            get
            {
                if (f_modPosSeq)
                    return _modPosSeq;
                f_modPosSeq = true;
                _modPosSeq = (int) (KaitaiStream.Mod(IntU, 13));
                return _modPosSeq;
            }
        }
        private uint _intU;
        private int _intS;
        private ExprMod m_root;
        private KaitaiStruct m_parent;
        public uint IntU { get { return _intU; } }
        public int IntS { get { return _intS; } }
        public ExprMod M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
