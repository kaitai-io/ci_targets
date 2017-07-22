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

        public EnumToI(KaitaiStream io, KaitaiStruct parent = null, EnumToI root = null) : base(io)
        {
            m_parent = parent;
            m_root = root ?? this;
            f_pet1I = false;
            f_pet1Mod = false;
            f_oneLtTwo = false;
            _read();
        }
        private void _read() {
            _pet1 = ((Animal) m_io.ReadU4le());
            _pet2 = ((Animal) m_io.ReadU4le());
        }
        private bool f_pet1I;
        private int _pet1I;
        public int Pet1I
        {
            get
            {
                if (f_pet1I)
                    return _pet1I;
                _pet1I = (int) (Pet1);
                f_pet1I = true;
                return _pet1I;
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
                _pet1Mod = (int) ((Pet1 + 32768));
                f_pet1Mod = true;
                return _pet1Mod;
            }
        }
        private bool f_oneLtTwo;
        private bool _oneLtTwo;
        public bool OneLtTwo
        {
            get
            {
                if (f_oneLtTwo)
                    return _oneLtTwo;
                _oneLtTwo = (bool) (Pet1 < Pet2);
                f_oneLtTwo = true;
                return _oneLtTwo;
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
