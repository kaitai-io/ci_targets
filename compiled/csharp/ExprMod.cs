// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ExprMod : KaitaiStruct
    {
        public static ExprMod FromFile(string fileName)
        {
            return new ExprMod(new KaitaiStream(fileName));
        }

        public ExprMod(KaitaiStream io, KaitaiStruct parent = null, ExprMod root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            _parse();
        }

        private void _parse()
        {
            f_modPosConst = false;
            f_modNegConst = false;
            f_modPosSeq = false;
            f_modNegSeq = false;
            _intU = m_io.ReadU4le();
            _intS = m_io.ReadS4le();
        }
        private bool f_modPosConst;
        private int _modPosConst;
        public int ModPosConst
        {
            get
            {
                if (f_modPosConst)
                    return _modPosConst;
                _modPosConst = (int) (KaitaiStream.Mod(9837, 13));
                f_modPosConst = true;
                return _modPosConst;
            }
        }
        private bool f_modNegConst;
        private int _modNegConst;
        public int ModNegConst
        {
            get
            {
                if (f_modNegConst)
                    return _modNegConst;
                _modNegConst = (int) (KaitaiStream.Mod(-9837, 13));
                f_modNegConst = true;
                return _modNegConst;
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
                _modPosSeq = (int) (KaitaiStream.Mod(IntU, 13));
                f_modPosSeq = true;
                return _modPosSeq;
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
                _modNegSeq = (int) (KaitaiStream.Mod(IntS, 13));
                f_modNegSeq = true;
                return _modNegSeq;
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
