// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class InstanceInRepeatUntil : KaitaiStruct
    {
        public static InstanceInRepeatUntil FromFile(string fileName)
        {
            return new InstanceInRepeatUntil(new KaitaiStream(fileName));
        }

        public InstanceInRepeatUntil(KaitaiStream p__io, KaitaiStruct p__parent = null, InstanceInRepeatUntil p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_untilVal = false;
            _read();
        }
        private void _read()
        {
            _entries = new List<short>();
            {
                var i = 0;
                short M_;
                do {
                    M_ = m_io.ReadS2le();
                    _entries.Add(M_);
                    i++;
                } while (!(M_ == UntilVal));
            }
        }
        public short UntilVal
        {
            get
            {
                if (f_untilVal)
                    return _untilVal;
                f_untilVal = true;
                long _pos = m_io.Pos;
                m_io.Seek(M_Io.Pos + 12);
                _untilVal = m_io.ReadS2le();
                m_io.Seek(_pos);
                return _untilVal;
            }
        }
        public List<short> Entries { get { return _entries; } }
        public InstanceInRepeatUntil M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_untilVal;
        private short _untilVal;
        private List<short> _entries;
        private InstanceInRepeatUntil m_root;
        private KaitaiStruct m_parent;
    }
}
