// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class CombineBool : KaitaiStruct
    {
        public static CombineBool FromFile(string fileName)
        {
            return new CombineBool(new KaitaiStream(fileName));
        }

        public CombineBool(KaitaiStream p__io, KaitaiStruct p__parent = null, CombineBool p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_boolCalc = false;
            f_boolCalcBit = false;
            _read();
        }
        private void _read()
        {
            _boolBit = m_io.ReadBitsIntBe(1) != 0;
        }
        private bool f_boolCalc;
        private bool _boolCalc;
        public bool BoolCalc
        {
            get
            {
                if (f_boolCalc)
                    return _boolCalc;
                f_boolCalc = true;
                _boolCalc = (bool) (false);
                return _boolCalc;
            }
        }
        private bool f_boolCalcBit;
        private bool _boolCalcBit;
        public bool BoolCalcBit
        {
            get
            {
                if (f_boolCalcBit)
                    return _boolCalcBit;
                f_boolCalcBit = true;
                _boolCalcBit = (bool) ((true ? BoolCalc : BoolBit));
                return _boolCalcBit;
            }
        }
        private bool _boolBit;
        private CombineBool m_root;
        private KaitaiStruct m_parent;
        public bool BoolBit { get { return _boolBit; } }
        public CombineBool M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
