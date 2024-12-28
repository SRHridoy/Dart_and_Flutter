import 'package:flutter/material.dart';
import 'package:whatsapp_ui/utils/colors.dart';

class ChatsTab extends StatelessWidget {
  ChatsTab({super.key});

  List<Map<String, dynamic>> chats = [
    {
      'name': 'Md. Ozaer Hossain',
      'profile_picture':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-1/471407604_1112791583724979_7295267593976441567_n.jpg?stp=c0.399.1536.1536a_cp0_dst-jpg_s60x60_tt6&_nc_cat=104&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeEXTrrzssLhoLQsmaruWAAb9qTvGA0tf5b2pO8YDS1_lr-RswnfY1P6IMu24fbd9lR3zvMBmzF4Pt3s4pjRiVzC&_nc_ohc=q2vHHQEyox4Q7kNvgFxqnF6&_nc_zt=24&_nc_ht=scontent.fdac174-1.fna&_nc_gid=A-Qg0eR2_UoX4Bxjb-_recc&oh=00_AYDiHAZhhSL_3Kom2kgfwSCKzUP91jagqpn8VnQQeoMTiw&oe=6775EDC5',
      'last_message': 'Code cholche?',
      'last_message_time': '04:30 AM',
      'unread': 1,
    },
    {
      'name': 'Nazmus Awarko',
      'profile_picture':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-1/464242660_3881260168799591_8911695855840236083_n.jpg?stp=cp0_dst-jpg_s60x60_tt6&_nc_cat=101&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeFVFlbMr2ExFEO6k9z9GfwZ317bzZZv2LDfXtvNlm_YsKP2uUxC80gLKMe2lyuToJeQj3pM4Hi6YUsWXfjKB9Fr&_nc_ohc=pSDynGEniYIQ7kNvgG0734Q&_nc_zt=24&_nc_ht=scontent.fdac174-1.fna&_nc_gid=ACPHtrL6hN2Sd1YNTgrrXyk&oh=00_AYB-3wibMwfUekSOjQjIZaCT_S0FnwUTEjjClMzNIE5fRg&oe=6775E824',
      'last_message': 'Bug fix korli?',
      'last_message_time': '03:01 AM',
      'unread': 2,
    },
    {
      'name': 'Zarif Tajul Arnob',
      'profile_picture':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-1/444973101_3644441685869770_632161560887379185_n.jpg?stp=cp0_dst-jpg_p60x60_tt6&_nc_cat=111&ccb=1-7&_nc_sid=e99d92&_nc_eui2=AeGw8ZCbMvvXpdH9PPxF2HTasRoCRjVPFJKxGgJGNU8UksAkclDgURpsQtEIAwDNx4ZNa5v5U5q3Wr7uahVCqOCw&_nc_ohc=ZexnSkKGp4YQ7kNvgH4v1vc&_nc_zt=24&_nc_ht=scontent.fdac174-1.fna&_nc_gid=A6i7ynsgbxyiVvgP7mfzhUU&oh=00_AYCSKyxnS95EWqZoQjas8Unq6gVMhPXrPgd43H0Wcow0Hw&oe=6775EE56',
      'last_message': 'Merge hoise?',
      'last_message_time': '02:12 AM',
      'unread': 3,
    },
    {
      'name': 'Istiyak Ahmed Mahi',
      'profile_picture':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-6/277574070_1641417719556472_3296669210009324339_n.jpg?_nc_cat=110&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGmhXUwEifYSXW1cx3CHsPIuvm0ZBRaegi6-bRkFFp6COU1JSZYoH039lw22plB4ryj2KLVQMC4XbXQGlNgzVxR&_nc_ohc=4w4iezEQ2BsQ7kNvgETxmOR&_nc_zt=23&_nc_ht=scontent.fdac174-1.fna&_nc_gid=AHvZ0oVO5kcw5wtWse9UGk5&oh=00_AYCY7ACSvksgEEcrVH4D8Jel0Lau9ggqqOjR8KE9Taq0vA&oe=6775FC79',
      'last_message': 'Night shift korchi.',
      'last_message_time': '01:39 AM',
      'unread': 0,
    },
    {
      'name': 'Ashikur Rahman',
      'profile_picture':
          'https://scontent.fdac174-1.fna.fbcdn.net/v/t39.30808-6/440445803_746455527659875_3255624125516805629_n.jpg?_nc_cat=103&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeGGrRgNCE3nrzEM4L_C14Ih8rFeQRlqbFfysV5BGWpsV7FFzt8vqr-Bo6BM2RfQPmLLWvMMz_Gobjcf89hibfId&_nc_ohc=OO-V07FRvgMQ7kNvgGymYqf&_nc_zt=23&_nc_ht=scontent.fdac174-1.fna&_nc_gid=A0o0AW_z92AZ59mqXlYE5b9&oh=00_AYDCWDtPm6Iuw4fNK5IgDMmd4WALNAC1ZEnUbu-49LsWmg&oe=67761042',
      'last_message': 'Test report ashe?',
      'last_message_time': '01:00 AM',
      'unread': 2,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: chats.length,
      itemBuilder: (context, index) {
        var data = chats[index];
        return ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(data['profile_picture']),
          ),
          title: Text(
            data['name'],
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
          subtitle: Text(
            data['last_message'],
            style: TextStyle(color: Colors.black54),
          ),
          trailing: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                data['last_message_time'],
                style: TextStyle(
                    color: AppColors.primaryColor, fontWeight: FontWeight.w700),
              ),
              data['unread'] == 0
                  ? SizedBox()
                  : Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColor,
                          shape: BoxShape.circle),
                      child: Center(
                        child: Text(
                          data['unread'].toString(),
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.w600),
                        ),
                      ),
                    )
            ],
          ),
        );
      },
    );
  }
}
