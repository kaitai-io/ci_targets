// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class EnumToI : KaitaiStruct
    {
        public static EnumToI FromFile(string fileName)
        {
            return new EnumToI(new KaitaiStream(fileName));
        }


        public enum Animal
        {
            Dog = 4,
            Cat = 7,
            Chicken = 12,
        }
        public EnumToI(KaitaiStream p__io, KaitaiStruct p__parent = null, EnumToI p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_oneLtTwo = false;
            f_pet1EqInt = false;
            f_pet1I = false;
            f_pet1IToS = false;
            f_pet1Mod = false;
            f_pet2EqInt = false;
            _read();
        }
        private void _read()
        {
            _pet1 = ((Animal) m_io.ReadU4le());
            _pet2 = ((Animal) m_io.ReadU4le());
        }
        private bool f_oneLtTwo;
        private bool _oneLtTwo;
        public bool OneLtTwo
        {
            get
            {
                if (f_oneLtTwo)
                    return _oneLtTwo;
                f_oneLtTwo = true;
                _oneLtTwo = (bool) (((int) Pet1) < ((int) Pet2));
                return _oneLtTwo;
            }
        }
        private bool f_pet1EqInt;
        private bool _pet1EqInt;
        public bool Pet1EqInt
        {
            get
            {
                if (f_pet1EqInt)
                    return _pet1EqInt;
                f_pet1EqInt = true;
                _pet1EqInt = (bool) (((int) Pet1) == 7);
                return _pet1EqInt;
            }
        }
        private bool f_pet1I;
        private int _pet1I;
        public int Pet1I
        {
            get
            {
                if (f_pet1I)
                    return _pet1I;
                f_pet1I = true;
                _pet1I = (int) (((int) Pet1));
                return _pet1I;
            }
        }
        private bool f_pet1IToS;
        private string _pet1IToS;
        public string Pet1IToS
        {
            get
            {
                if (f_pet1IToS)
                    return _pet1IToS;
                f_pet1IToS = true;
                _pet1IToS = (string) (((int) Pet1).ToString());
                return _pet1IToS;
            }
        }
        private bool f_pet1Mod;
        private int _pet1Mod;
        public int Pet1Mod
        {
            get
            {
                if (f_pet1Mod)
                    return _pet1Mod;
                f_pet1Mod = true;
                _pet1Mod = (int) (((int) Pet1) + 32768);
                return _pet1Mod;
            }
        }
        private bool f_pet2EqInt;
        private bool _pet2EqInt;
        public bool Pet2EqInt
        {
            get
            {
                if (f_pet2EqInt)
                    return _pet2EqInt;
                f_pet2EqInt = true;
                _pet2EqInt = (bool) (((int) Pet2) == 5);
                return _pet2EqInt;
            }
        }
        private Animal _pet1;
        private Animal _pet2;
        private EnumToI m_root;
        private KaitaiStruct m_parent;
        public Animal Pet1 { get { return _pet1; } }
        public Animal Pet2 { get { return _pet2; } }
        public EnumToI M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
